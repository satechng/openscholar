; Drupal.org MakeFile for OpenScholar
core = 7.x
api = 2

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

projects[fb_social][subdir] = "contrib"
;projects[fb_social][version] = 2.0-beta4+1-dev
projects[fb_social][download][type] = git
projects[fb_social][download][branch] = 7.x-2.x
projects[fb_social][download][revision] = cd73e9b
projects[fb_social][patch][] = "https://raw.github.com/openscholar/comment_sources/a60c0282a1d8a7dbd8d0021c82b73919ada7034b/patches/fb_social.patch"

projects[features][subdir] = "contrib"
projects[features][version] = 1.0
; projects[features][revision] = "c0b054d"

projects[feeds][subdir] = "contrib"
projects[feeds][version] = 2.0-alpha7

projects[feeds_xpathparser][subdir] = "contrib"
projects[feeds_xpathparser][download][type] = git
projects[feeds_xpathparser][download][branch] = 7.x-3.x
projects[feeds_xpathparser][download][revision] = 5bea17e

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

projects[media_gallery][subdir] = "contrib"
projects[media_gallery][version] = 2.x-dev
projects[media_gallery][download][type] = git
projects[media_gallery][download][branch] = 7.x-2.x
projects[media_gallery][download][revision] = "f28ffd1a6f5eaa4eb6554643a3db4dd4543923e1"
projects[media_gallery][patch][] = "http://drupal.org/files/media_gallery-double_browser-1939186-3.patch"
projects[media_gallery][patch][] = "http://drupal.org/files/media_gallery-remove_taxonomy_shenanigans-1686498-9.patch"
projects[media_gallery][patch][] = "http://drupal.org/files/media_gallery-rename_field-1940036-3.patch"
projects[media_gallery][patch][] = "http://drupal.org/files/media_gallery-lightbox_double_file-1977822-1.patch"

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

projects[multiform][subdir] = "contrib"
projects[multiform][version] = 1.0

projects[nice_menus][patch][] = "http://drupal.org/files/translate-menu-item-1050352-17-v2.1.patch"
projects[nice_menus][patch][] = "https://raw.github.com/openscholar/openscholar/b0cb4b6b2ee8d0e162c0a35527ca8d4dcbfc490b/patches/nice_menus.fatal_localized_options.patch"
projects[nice_menus][subdir] = "contrib"
projects[nice_menus][version] = 2.1

projects[nodeorder][subdir] = "contrib"
projects[nodeorder][version] = 1.1

projects[oembed][subdir] = "contrib"
;projects[oembed][version] = 0.x-dev
projects[oembed][download][type] = git
projects[oembed][download][branch] = 7.x-0.x
projects[oembed][download][revision] = "852f97e"
projects[oembed][patch][] = "http://drupal.org/files/oembed.1811110.upgrade_to_media.patch"

projects[og][subdir] = "contrib"
projects[og][version] = 2.2
projects[og][patch][] = "http://drupal.org/files/1981620-er-prepopualte-existing-node-1.patch"
projects[og][patch][] = "http://drupal.org/files/1982798-og-worker-2.patch"

projects[og_tasks][subdir] = "contrib"
projects[og_tasks][version] = 1.0
projects[og_tasks][download][type] = git
projects[og_tasks][download][url] = "http://git.drupal.org/project/og_tasks.git"
projects[og_tasks][patch][] = "http://drupal.org/files/port_code_to_og7.x-2_1834076_3.patch"
projects[og_tasks][patch][] = "http://drupal.org/files/check_spaces_preset-2059881-4.patch"
projects[og_views][subdir] = "contrib"
projects[og_views][version] = 1.0

projects[og_vocab][subdir] = "contrib"
projects[og_vocab][version] = 1.x-dev
projects[og_vocab][download][type] = git
projects[og_vocab][download][branch] = 7.x-1.x-dev
projects[og_vocab][download][revision] = 61a6b9f
projects[og_vocab][patch][] = "https://drupal.org/files/og-vocab-prevent-old-term-refernce-error.patch"

projects[olark][subdir] = "contrib"
projects[olark][version] = 1.0-beta1
projects[olark][patch][] = "http://drupal.org/files/olark-suppress_roles-1984210-1.patch"
projects[olark][patch][] = "http://drupal.org/files/olark-js-to-d7-update-1785322-5.patch"

projects[pathauto][subdir] = "contrib"
projects[pathauto][version] = 1.2

projects[pinserver][subdir] = "contrib"
projects[pinserver][type] = module
projects[pinserver][download][type] = git
projects[pinserver][download][url] = "git://github.com/openscholar/pinserver.git"
;projects[pinserver][tag] = 7.x-3.3
projects[pinserver][branch] = 7.x-3.x
; @todo Make tag when QA is finished 1234

projects[purl][subdir] = "contrib"
;: projects[purl][version] = 1.0-beta1+11-dev
projects[purl][download][type] = git
projects[purl][download][branch] = 7.x-1.x
projects[purl][download][revision] = 469e8668
projects[purl][patch][] = "http://drupal.org/files/1473502-purl-init-2_0.patch"
projects[purl][patch][] = "http://drupal.org/files/1982198-purl-cache-set-1.patch"
projects[purl][patch][] = "http://drupal.org/files/729862-9-purl-inbound-alter-modifies-q.patch"

projects[registration][subdir] = "contrib"
projects[registration][version] = 1.1

projects[respondjs][subdir] = "contrib"
projects[respondjs][version] = 1.1

projects[robotstxt][subdir] = "contrib"
projects[robotstxt][version] = "1.1"

projects[restws][subdir] = "contrib"
projects[restws][version] = "2.0-alpha3"
projects[restws][patch][] = "http://drupal.org/files/1806142-restws-property-exception.patch"

projects[shorten][subdir] = "contrib"
projects[shorten][version] = 1.2

projects[services][subdir] = "contrib"
;projects[services][version] = 3.3+42-dev
projects[services][download][branch] = 7.x-3.x
projects[services][download][revision] = 761e620

projects[services_basic_auth][subdir] = "contrib"
projects[services_basic_auth][version] = "1.1"

projects[spaces][subdir] = "contrib"
;projects[spaces][version] = 3.0-alpha1+9-dev
projects[spaces][revision] = "eac3a7e"
projects[spaces][patch][] = "http://drupal.org/files/1470434-spaces-og-28.patch"
projects[spaces][patch][] = "http://drupal.org/files/spaces_ui-show_disabled-1662918-1.patch"
projects[spaces][download][type] = git
projects[spaces][download][branch] = 7.x-3.x
projects[spaces][download][revision] = eac3a7e

projects[stringoverrides][version] = 1.8
projects[stringoverrides][subdir] = "contrib"

projects[strongarm][subdir] = "contrib"
projects[strongarm][version] = 2.0-rc1

projects[token][subdir] = "contrib"
projects[token][version] = 1.4

projects[transliteration][subdir] = "contrib"
projects[transliteration][version] = 3.1

projects[twitter_pull][subdir] = "contrib"
projects[twitter_pull][version] = 1.0-rc4
projects[twitter_pull][patch][] = 'http://drupal.org/files/twitter_pull-twitter_api_php-1781024-40.patch'

projects[views][subdir] = "contrib"
; projects[views][version] = 3.5+29-dev
projects[views][download][type] = git
projects[views][download][branch] = 7.x-3.x
projects[views][download][revision] = 7173513

projects[views_bulk_operations][subdir] = "contrib"
projects[views_bulk_operations][version] = 3.0

projects[views_og_cache][subdir] = "contrib"
projects[views_og_cache][download][type] = git
projects[views_og_cache][download][branch] = 7.x-1.x-dev
projects[views_og_cache][download][revision] = 059a845

projects[views_slideshow][subdir] = "contrib"
projects[views_slideshow][version] = 3.0

projects[views_litepager][subdir] = "contrib"
projects[views_litepager][version] = 3.0
projects[views_litepager][patch][] = "http://drupal.org/files/views_litepager-requirements-array-error_1976056-2.patch"
projects[views_litepager][patch][] = "http://drupal.org/files/views_litepager-off_by_one-2006992-1.patch"

projects[views_infinite_scroll][subdir] = "contrib"
projects[views_infinite_scroll][version] = 1.1
;projects[views_infinite_scroll][patch][] = "http://drupal.org/files/views_infinite_scroll-vbo-1965288-2.patch"
;projects[views_infinite_scroll][patch][] = "http://localhost/patch/views_infinite_scroll-no_auto_scroll-2012910-1.patch"

projects[wysiwyg][subdir] = "contrib"
projects[wysiwyg][version] = 2.2
projects[wysiwyg][patch][] = "http://drupal.org/files/wysiwyg-remove-breaks-1964806-2.patch"
projects[wysiwyg][patch][] = "http://drupal.org/files/wysiwyg-table-format.patch"

projects[wysiwyg_filter][subdir] = "contrib"
projects[wysiwyg_filter][version] = 1.6-rc2

; Libraries.
libraries[clippy][type] = "libraries"
libraries[clippy][download][type] = "file"
libraries[clippy][download][url] = "https://github.com/mojombo/clippy/archive/master.zip"

libraries[colorbox][type] = "libraries"
libraries[colorbox][download][type] = "file"
libraries[colorbox][download][url] = "https://github.com/jackmoore/colorbox/archive/1.4.14.zip"

libraries[jquery.cycle][type] = "libraries"
libraries[jquery.cycle][download][type] = "file"
; libraries[jquery.cycle][download][url] = "https://github.com/downloads/malsup/cycle/jquery.cycle.all.2.88.js"
; get 2.88 blob from github so it keeps default filename.
libraries[jquery.cycle][download][url] = "https://raw.github.com/malsup/cycle/c2b85942513801befea2ddf407eb7d2a17e441e8/jquery.cycle.all.js"

libraries[tinymce][type] = "libraries"
libraries[tinymce][download][type] = "file"
libraries[tinymce][download][url] = "http://github.com/downloads/tinymce/tinymce/tinymce_3.5.8.zip"

libraries[spyc][type] = "libraries"
libraries[spyc][download][type] = "file"
libraries[spyc][download][url] = "http://spyc.googlecode.com/files/spyc-0.5.zip"

libraries[respondjs][type] = "libraries"
libraries[respondjs][download][type] = "file"
libraries[respondjs][download][url] = "https://github.com/scottjehl/Respond/archive/master.zip"

libraries[responsiveslides][type] = "libraries"
libraries[responsiveslides][download][type] = "file"
libraries[responsiveslides][download][url] = "https://github.com/viljamis/ResponsiveSlides.js/archive/v1.53.tar.gz"
libraries[responsiveslides][patch][] = "https://raw.github.com/openscholar/openscholar/c5b00de5f1c79a679446467296ab16ebff6c19e0/patches/responsiveslides-hc_changes.patch"

libraries[flexslider][type] = "libraries"
libraries[flexslider][download][type] = "file"
libraries[flexslider][download][url] = "https://github.com/woothemes/FlexSlider/archive/flexslider1.zip"

libraries[twitter-api-php][type] = "libraries"
libraries[twitter-api-php][download][type] = "file"
libraries[twitter-api-php][download][url] = "https://github.com/J7mbo/twitter-api-php/archive/master.zip"

libraries[autopager][type] = "libraries"
libraries[autopager][download][type] = "file"
libraries[autopager][download][url] = "https://github.com/sagotsky/jquery-autopager/archive/v1.2.zip"

libraries[html5shiv[type] = "libraries"
libraries[html5shiv][download][type] = "file"
libraries[html5shiv][download][url] = "http://raw.github.com/aFarkas/html5shiv/master/dist/html5shiv.js"
