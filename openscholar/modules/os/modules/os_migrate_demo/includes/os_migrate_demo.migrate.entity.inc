<?php

/**
 * @file
 * Populate distribution with some content.
 */

abstract class OsMigrate extends Migration {

  /**
   * If the entity-type is "taxonomy_term", determine of the term should
   * be assigned to a vocabulary owned by OG-vocab.
   */
  public $ogVocab = FALSE;

  public function __construct() {
    parent::__construct();

    // Make sure we can use it for node and term only.
    if (!in_array($this->entityType, array('node', 'taxonomy_term', 'og_vocab'))) {
      throw new Exception(format_string('OsMigrate does not support @type', array('@type' => $this->entityType)));
    }

    $this->description = t('Import @type - @bundle from CSV file.', array('@type' => $this->entityType, '@bundle' => $this->bundle));

    if ($this->entityType == 'node') {
      $this->addFieldMapping('title', 'title');
      $class_name = 'MigrateDestinationNode';
    }
    elseif ($this->entityType == 'taxonomy_term') {
      $class_name = 'MigrateDestinationTerm';

      $csv_columns = array(
        array('id', 'ID'),
        array('name', 'Name'),
        array('description', 'Description'),
      );
      $this->addFieldMapping('name', 'name');
      $this->addFieldMapping('description', 'description');


      if ($this->ogVocab) {
        $this
          ->addFieldMapping(OG_AUDIENCE_FIELD, OG_AUDIENCE_FIELD)
          ->sourceMigration('OsMigratePersonalNode');

        $this->addFieldMapping('vocabulary_machine_name', 'vocabulary_machine_name');
        $csv_columns[] = array(OG_AUDIENCE_FIELD, 'Site');
      }
      $this->csvColumns = $csv_columns;
    }
    elseif ($this->entityType == 'og_vocab') {
      $class_name = 'MigrateDestinationEntityAPI';
    }

    // Create a map object for tracking the relationships between source rows
    $key = array(
      'id' => array(
        'type' => 'varchar',
        'length' => 255,
        'not null' => TRUE,
      ),
    );
    $this->map = new MigrateSQLMap($this->machineName, $key, MigrateDestinationEntityAPI::getKeySchema($this->entityType));

    // Create a MigrateSource object.
    $this->source = new MigrateSourceCSV(drupal_get_path('module', 'os_migrate_demo') . '/csv/' . $this->entityType . '/' . $this->bundle . '.csv', $this->csvColumns, array('header_rows' => 1));
    $this->destination = new $class_name($this->bundle, array('text_format' => 'filtered_html'));
  }

  public function prepareRow($row) {
    // The migrate content isn't belong to any one, the default will be the
    // admin user.
    if (!$row->uid) {
      $row->uid = 1;
    }

    if ($this->entityType == 'taxonomy_term' && $this->ogVocab) {
      $this->prepareRowTaxonomyTerm($row);
    }
  }

  public function prepare($entity, $row) {
    if ($this->entityType == 'taxonomy_term' && $this->ogVocab) {
      $this->prepareTaxonomyTerm($entity, $row);
    }
  }

  /**
   * Add the group identifier to the vocabulary name, and set OG-vocab
   * relation to the newly created vocabulary.
   */
  private function prepareRowTaxonomyTerm(&$row) {
    $name = $this->bundle . '_' . $row->{OG_AUDIENCE_FIELD};
    if (!$vocabulary = taxonomy_vocabulary_machine_name_load($name)) {
      // Create a vocaulary for the bundle in the VSite.
      $vocabulary = (object) array(
        'machine_name' => $name,
        'name' => $this->bundle,
        'description' => '',
        'help' => '',
      );
      taxonomy_vocabulary_save($vocabulary);

      // Create an OG-vocab entity for all group-content bundles
      // @todo: Move to "OG-Vocab" migrate.
      // We can't save OG vocab for all bundles, as it fails in Travis.
      foreach (array_keys(os_get_bundles()) as $bundle) {
        $og_vocab = og_vocab_create_og_vocab($vocabulary->vid, 'node', $bundle);
        $og_vocab->save();
      }
    }

    $row->vocabulary_machine_name = $name;
  }

  /**
   * Set relation of the vocabulary to the group.
   */
  private function prepareTaxonomyTerm($entity, $row) {
    $vocabulary = taxonomy_vocabulary_machine_name_load($entity->vocabulary_machine_name);
    $gid = $entity->og_group_ref['destid1'];

    og_vocab_relation_save($vocabulary->vid, 'node', $gid);
  }

  /**
   * When migrating a site, check if he have a domain and insert the domain.
   */
  public function complete($entity, $row) {
    if (!in_array($this->bundle, array('personal', 'project')) || empty($row->domain)) {
      return;
    }

    os_migrate_demo_spaces_overrides('og', $entity->nid, $row->domain);
  }
}
