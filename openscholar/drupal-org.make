; Drupal.org MakeFile for OpenScholar
core = 7.x
api = 2

projects[drupal][version] = 7.22
projects[drupal][type] = core
projects[drupal][patch][] = "http://drupal.org/files/order-weighted-terms-941266-35-D7.patch"
projects[drupal][patch][] = "https://drupal.org/files/drupal-apc_redeclare_database-838744-24.patch"

projects[admin_menu][subdir] = "contrib"
projects[admin_menu][version] = 3.0-rc1

projects[advanced_help][subdir] = "contrib"
projects[advanced_help][version] = 1.0
projects[advanced_help][patch][] = "http://drupal.org/files/advanced_help-removing_help_popup_theme_css-1803488-1.patch"

projects[apachesolr][subdir] = "contrib"
projects[apachesolr][version] = 1.1

projects[apachesolr_attachments][subdir] = "contrib"
projects[apachesolr_attachments][version] = 1.2

projects[apachesolr_og][subdir] = "contrib"
projects[apachesolr_og][revision] = 5fda19fc208bd62713be99a839aed0528d9d3db7

projects[boxes][subdir] = "contrib"
projects[boxes][version] = 1.0-beta7
projects[boxes][patch][] = "http://raw.github.com/openscholar/openscholar/b38919350643c8b26a3f639e935c1c6e802c6dd7/patches/boxes.load_from_spaces_and_fix_fatals.patch"

projects[calendar][subdir] = "contrib"
projects[calendar][version] = 3.4
projects[calendar][patch][] = "http://raw.github.com/openscholar/openscholar/72d63ee3537c31505b7481975886ec13789feeb5/patches/calendar-fix-week-view-overflow.patch"

projects[colorbox][subdir] = "contrib"
; projects[colorbox][version] = 1.3
projects[colorbox][version] = 2.4

projects[comment_sources][download][type] = git
projects[comment_sources][download][url] = "git://github.com/openscholar/comment_sources.git"
projects[comment_sources][download][branch] = 7.x-2.x
projects[comment_sources][download][revision] = a60c0282a1d8a7dbd8d0021c82b73919ada7034b
projects[comment_sources][subdir] = "contrib"
projects[comment_sources][type] = module

projects[context][subdir] = "contrib"
projects[context][version] = 3.0-beta4
projects[context][patch][] = "http://drupal.org/files/os-custom-beta4.patch"
projects[context][patch][] = "http://drupal.org/files/1855004.context.float_block_weights.patch"

projects[contextual_annotation][subdir] = "contrib"
projects[contextual_annotation][type] = module
projects[contextual_annotation][download][type] = git
projects[contextual_annotation][download][url] =  "http://git.drupal.org/project/contextual_annotation.git"
; needs patches to contrib

projects[ctools][subdir] = "contrib"
projects[ctools][download][type] = git
projects[ctools][download][branch] = 7.x-1.x
projects[ctools][download][revision] = be2607142ce97d093acce9417833640680330efe
projects[ctools][patch][] = "http://drupal.org/files/1707810-ctools-fields-mock-field-7.patch"
projects[ctools][patch][] = "http://drupal.org/files/ctools-plugin_extension-1623044-1.patch"

projects[date][subdir] = "contrib"
projects[date][version] = 2.6
projects[date][patch][] = "http://drupal.org/files/date-migrate_v24-1715700-1.patch"

projects[date_ical][subdir] = "contrib"
projects[date_ical][version] = 2.7

projects[devel][subdir] = "contrib"
projects[devel][version] = 1.3

projects[diff][subdir] = "contrib"
projects[diff][version] = 3.2

projects[disqus][subdir] = "contrib"
projects[disqus][version] = 1.9
projects[disqus][patch][] = "https://raw.github.com/openscholar/comment_sources/a60c0282a1d8a7dbd8d0021c82b73919ada7034b/patches/disqus.patch"

projects[dyntextfield][subdir] = "contrib"
projects[dyntextfield][type] = module
projects[dyntextfield][download][type] = git
projects[dyntextfield][download][tag] = 1.0
projects[dyntextfield][download][url] = "git://github.com/amitaibu/dyntextfield.git"

projects[entity][subdir] = "contrib"
projects[entity][version] = 1.0
projects[entity][patch][] = http://drupal.org/files/1972668-file-delete-1.patch
projects[entity][patch][] = http://drupal.org/files/entity-file_entity_access-1831578-9.patch

projects[entitycache][subdir] = "contrib"
projects[entitycache][version] = 1.1
