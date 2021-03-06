<?php
/**
 * @file
 * Pin protected sites, controls access to a vsite via PIN.
 */

/**
 * Logic for access to private pin protected sites
 * @see os_pinserver_auth_node_access
 */
function _os_pinserver_auth_private_site_access($node, $op, $account){
  $type = is_string($node) ? $node : (is_array($node) ? $node['type'] : $node->type);

  // Handle access to groups.
  if (!is_string($node) && og_is_group_type('node', $type) && isset($node->nid)) {
    $wrapper = entity_metadata_wrapper('node', $node);

    if (! empty($wrapper->{VSITE_ACCESS_FIELD})) {
      switch ($wrapper->{VSITE_ACCESS_FIELD}->value()) {
        case OS_PINSERVER_INTRANET_ACCESS :
        case OS_PINSERVER_ACCESS :
          // Private group.
          if (! user_access('administer group') && ! og_is_member('node', $node->nid, 'user', $account) && ! pinserver_get_user()) {
            // They are not a member, or logged in through pin, deny access
            return NODE_ACCESS_DENY;
          }
          break;
      }
    }
  }

  return NODE_ACCESS_IGNORE;
}

/**
 * React to vsite access denied
 * @see os_pinserver_auth_vsite_access_denied
 */
function _os_pinserver_auth_vsite_access_denied($vsite){

  //Get Privacy Setting
  $wrapper = entity_metadata_wrapper('node', $vsite->group);
  if (! empty($wrapper->{VSITE_ACCESS_FIELD})) {
    switch ($wrapper->{VSITE_ACCESS_FIELD}->value()) {
      case OS_PINSERVER_INTRANET_ACCESS :
      case OS_PINSERVER_ACCESS :
        // Private group.
        global $user;
        if (! user_access('administer group') && ! og_is_member('node', $vsite->group->nid, 'user', $user) && !pinserver_check_system_settings()) {
          //Load custom pinserver variables
          $vsite->controllers->variable->init_overrides();

          // They are not a member, validate through pin.
          pinserver_redirect(array(
            'redirect' => url($_GET['q'], array(
              'absolute' => TRUE
            )),
            'tk_forward' => '0'
          ));
        }
        break;
    }
  }
}

/**
 * Add Pinserver Site Privacy options.
 */
function _os_pinserver_auth_vsite_access_privacy_values_alter(&$privacy_options){
  $privacy_options[OS_PINSERVER_ACCESS] = t('Harvard Community') . "<br><span class='radio-description'>" . t("Only the Harvard community will be able to access your site. Sign-in via Harvard required.") . "</span>";
  // @todo Add Intranet private by PIN
  // $privacy_options[OS_PINSERVER_INTRANET_ACCESS] = t('Intranet Private Harvard Community');
}