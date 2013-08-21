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

projects[entityreference][subdir] = "contrib"
;projects[entityreference][version] = 1.0-rc5+11-dev
projects[entityreference][download][type] = git
projects[entityreference][download][branch] = 7.x-1.0
projects[entityreference][download][revision] = 5b1c289
projects[entityreference][patch][] = "http://drupal.org/files/1802916-er-show-identifier-14.patch"

projects[entityreference_prepopulate][subdir] = "contrib"
; projects[entityreference_prepopulate][version] = 1.3
projects[entityreference_prepopulate][download][type] = git
projects[entityreference_prepopulate][download][revision] = e2c2811
projects[entityreference_prepopulate][patch][] = "https://drupal.org/files/2007746-er-hide-access-5.patch"

projects[elysia_cron][subdir] = "contrib"
projects[elysia_cron][version] = 2.1

projects[eva][subdir] = "contrib"
projects[eva][version] = 1.2
projects[eva][revision] = "6d92c27"

projects[facetapi][subdir] = "contrib"
projects[facetapi][version] = 1.1
projects[facetapi][patch][] = "http://drupal.org/files/2006704-facetapi-er-regroup-2.patch"

projects[features][subdir] = "contrib"
projects[features][version] = 1.0
; projects[features][revision] = "c0b054d"

projects[feeds][subdir] = "contrib"
projects[feeds][version] = 2.0-alpha7

projects[field_collection][subdir] = "contrib"
projects[field_collection][version] = 1.0-beta5

projects[field_group][subdir] = "contrib"
projects[field_group][version] = 1.1

projects[field_redirection][subdir] = "contrib"
projects[field_redirection][version] = 2.5

projects[file_entity][subdir] = "contrib"
projects[file_entity][download][type] = git
projects[file_entity][download][branch] = 7.x-2.x
projects[file_entity][download][revision] = 68ab8ed52f9bb993e8f3c541b89420637e440609
projects[file_entity][patch][] = "http://drupal.org/files/file_entity.1834902-3.dimension_overrides.patch"
projects[file_entity][patch][] = "https://raw.github.com/openscholar/openscholar/772cc53bad99cd1e88a24fe3f77c6fd26305c0ce/patches/file_entity.private_files_view_filter.patch"

projects[filefield_paths][subdir] = "contrib"
;projects[filefield_paths][version] = 1.0-beta3+2-dev
projects[filefield_paths][download][type] = git
projects[filefield_paths][download][branch] = 7.x-5.x
projects[filefield_paths][download][revision] = 84fb637

projects[flag][subdir] = "contrib"
projects[flag][version] = 2.0

projects[google_feedapi][subdir] = "contrib"
projects[google_feedapi][version] = 1.0-beta2

projects[hierarchical_taxonomy][subdir] = "contrib"
projects[hierarchical_taxonomy][download][type] = git
projects[hierarchical_taxonomy][download][url] = "http://git.drupal.org/project/hierarchical_taxonomy.git"
projects[hierarchical_taxonomy][download][branch] = 7.x-1.x
projects[hierarchical_taxonomy][download][revision] = 5bbe344
projects[hierarchical_taxonomy][patch][] = "https://drupal.org/files/2034713-hs-comaprse-name-2.patch"

projects[imagefield_crop][subdir] = "contrib"
;projects[imagefield_crop][version] = 2.0
projects[imagefield_crop][download][type] = git
projects[imagefield_crop][download][branch] = 7.x-2.x
projects[imagefield_crop][download][revision] = 4a5302
projects[imagefield_crop][patch][] = "http://drupal.org/files/imagefield_crop-hook_imagefield_crop_instance_alter-1915510-2.patch"
projects[imagefield_crop][patch][] = "http://drupal.org/files/imagefield_crop-max_filesize-1923934-1.patch"

projects[jcarousel][subdir] = "contrib"
projects[jcarousel][version] = 2.6

projects[js][subdir] = "contrib"
projects[js][version] = 1.0-beta2

projects[job_scheduler][subdir] = "contrib"
projects[job_scheduler][version] = 2.0-alpha3

projects[libraries][subdir] = "contrib"
projects[libraries][version] = 2.1
projects[libraries][patch][] = "http://drupal.org/files/0001-Fix-1938638-by-coredumperror-Fix-typo.patch"

; projects[link][patch][] = "http://drupal.org/files/link-MigrateLinkFieldHandler-1010850-54.patch"
projects[link][patch][] = "http://drupal.org/files/link-MigrateLinkFieldHandler-1010850-61.patch"
projects[link][patch][] = "http://drupal.org/files/link-7.x-1.x-required_fields-1368616-11.patch"
projects[link][subdir] = "contrib"
projects[link][download][branch] = 7.x-1.x
projects[link][download][type] = git
;projects[link][revision] = "799bca2"
projects[link][download][revision] = "ff518b60113f29885a8f358e8b0fa4499b0c608d"

projects[linkchecker][subdir] = "contrib"
projects[linkchecker][version] = 1.0-beta1

projects[media][subdir] = "contrib"
projects[media][version] = 2.x-dev
projects[media][revision] = "c49692b"
; projects[media][patch][] = "http://drupal.org/files/issues/1121808-media-resuse-files-by-uri.patch"
; projects[media][patch][] = "http://drupal.org/files/media-7.x-2.x-fix-class-array.patch"

projects[message][subdir] = "contrib"
projects[message][version] = 1.8

projects[module_filter][subdir] = "contrib"
projects[module_filter][version] = 1.7

projects[memcache][subdir] = "contrib"
projects[memcache][version] = 1.0

projects[migrate][subdir] = "contrib"
projects[migrate][version] = 2.5

projects[migrate_extras][patch][] = "http://drupal.org/files/migrate_extras-duplicate_MigrateDestinationOgMembership-1788440-5.patch"
projects[migrate_extras][subdir] = "contrib"
projects[migrate_extras][version] = 2.4

projects[mollom][subdir] = "contrib"
projects[mollom][version] = 2.2
