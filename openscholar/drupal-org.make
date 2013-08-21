; Drupal.org MakeFile for OpenScholar
core = 7.x
api = 2

projects[drupal][version] = 7.22
projects[drupal][type] = core
projects[drupal][patch][] = "http://drupal.org/files/order-weighted-terms-941266-35-D7.patch"
projects[drupal][patch][] = "https://drupal.org/files/drupal-apc_redeclare_database-838744-24.patch"

projects[admin_menu][subdir] = "contrib"
projects[admin_menu][version] = 3.0-rc1
