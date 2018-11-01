#!/bin/bash

lang="$1"
if [ "$lang" == "en" ]
then
    echo "Set to English"
    lang="en_EN";
    timezone="Europe/London"
    cookie_url="cookie-policy"
    cookie_msg="We use cookies."
    cookie_anchor="Cookie Policy"
    cookie_read="Read more"
    privacy_url="privacy-policy"
    privacy_msg="Privacy Policy"
    home="Home"
    privacy_show="Privacy & Cookies Policy"
    center_footer='<p><a href="/'"$privacy_url"'/">'"$privacy_msg"'</a></p>'
else
    echo "Set to Spanish";
    lang="es_ES";
    timezone="Europe/Madrid"
    cookie_url="politica-de-cookies"
    cookie_msg="Usamos cookies."
    cookie_anchor="Política de Cookies"
    cookie_read="Leer m\u00e1s"
    privacy_url="politica-de-privacidad"
    privacy_msg="Política de Privacidad"
    privacy_show="Política de Privacidad y Cookies"
    home="Inicio"
    center_footer='<p><a href="/'"$privacy_url"'/">'"$privacy_msg"'</a>, <a href="/aviso-legal/">Aviso Legal</a></p>'
fi

# Activate plugins
wp plugin activate akismet
wp plugin activate autoptimize
wp plugin activate host-analyticsjs-local
wp plugin activate contact-form-7
wp plugin activate cookie-law-info
wp plugin activate wp-smushit
wp plugin activate wp-gallery-custom-links
wp plugin activate wordpress-seo
wp plugin activate updraftplus
wp plugin activate wordpress-importer
wp plugin activate column-shortcodes
wp plugin activate redirection
wp plugin activate disable-comment-url
wp plugin activate rbr

wp plugin activate gallery-lightbox-slider
wp option update glg_gallery_autoplay false
wp option update glg_gallery_active active
wp option update ecf_slide_every 3
wp option update glg_gallery_thumbnails true
wp option update glg_gallery_show_captions true
wp option update glg_gallery_fancy_caption true



# Setup WP and plugins settings
wp option update permalink_structure "/%category%/%postname%/"
wp option update timezone_string $timezone
wp option update WPLANG $lang
wp option update ping_sites 'http://rpc.pingomatic.com
http://rpc.twingly.com
http://api.feedster.com/ping
http://api.moreover.com/RPC2
http://api.moreover.com/ping
http://www.blogdigger.com/RPC2
http://www.blogshares.com/rpc.php
http://www.blogsnow.com/ping
http://www.blogstreet.com/xrbin/xmlrpc.cgi
http://bulkfeeds.net/rpc
http://www.newsisfree.com/xmlrpctest.php
http://ping.blo.gs/
http://ping.feedburner.com
http://ping.syndic8.com/xmlrpc.php
http://ping.weblogalot.com/rpc.php
http://rpc.blogrolling.com/pinger/
http://rpc.technorati.com/rpc/ping
http://rpc.weblogs.com/RPC2
http://www.feedsubmitter.com
http://blo.gs/ping.php
http://www.pingerati.net
http://www.pingmyblog.com
http://geourl.org/ping
http://ipings.com
http://www.weblogalot.com/ping'

wp option update wordpress_api_key "870adb89f494"
wp option update akismet_comment_form_privacy_notice "hide"
wp option update wp-smush-hide_upgrade_notice 1

wp option update autoptimize_js_exclude seal.js
wp option update autoptimize_html on
wp option update autoptimize_html_keepcomments on
wp option update autoptimize_js on
wp option update autoptimize_js_include_inline on
wp option update autoptimize_css on
wp option update autoptimize_css_defer on
wp option update autoptimize_css_include_inline on
wp option update autoptimize_show_adv 1
wp option update autoptimize_extra_settings --format=json '{"autoptimize_extra_checkbox_field_1":"1","autoptimize_extra_checkbox_field_0":"1","autoptimize_extra_radio_field_4":"4","autoptimize_extra_text_field_2":"","autoptimize_extra_text_field_3":""}'
wp option update autoptimize_css_defer_inline < inline_defer.css

wp option update CookieLawInfo-0.9 --format=json '{"animate_speed_hide":"500","animate_speed_show":"500","background":"#fff","background_url":"","border":"#444","border_on":true,"button_1_text":"OK","button_1_url":"#","button_1_action":"#cookie_action_close_header","button_1_link_colour":"#fff","button_1_new_win":false,"button_1_as_button":true,"button_1_button_colour":"#2196f3","button_1_button_size":"medium","button_2_text":"'"$cookie_read"'","button_2_url":"\/'"$cookie_url"'\/","button_2_action":"CONSTANT_OPEN_URL","button_2_link_colour":"#444","button_2_new_win":true,"button_2_as_button":false,"button_2_button_colour":"#333","button_2_button_size":"medium","button_3_text":"Reject","button_3_url":"#","button_3_action":"#cookie_action_close_header_reject","button_3_link_colour":"#fff","button_3_new_win":false,"button_3_as_button":true,"button_3_button_colour":"#000","button_3_button_size":"medium","font_family":"inherit","header_fix":false,"is_on":true,"is_reject_on":false,"notify_animate_hide":true,"notify_animate_show":false,"notify_div_id":"#cookie-law-info-bar","notify_position_horizontal":"right","notify_position_vertical":"bottom","notify_message":"'"$cookie_msg"'[cookie_button] [cookie_link]","scroll_close":false,"scroll_close_reload":false,"accept_close_reload":false,"showagain_background":"#fff","showagain_border":"#000","showagain_text":"'"$privacy_show"'","showagain_div_id":"#cookie-law-info-again","showagain_tab":false,"showagain_x_position":"100px","text":"#000","use_colour_picker":true,"show_once_yn":false,"show_once":"10000"}'

wp option update caos_allow_tracking cookie_is_set
wp option update sgal_cookie_notice_name viewed_cookie_policy

# Configure SEO plugin
wp option update wpseo --format=json '{"ms_defaults_set":false,"version":"7.8","disableadvanced_meta":true,"onpage_indexability":true,"baiduverify":"","googleverify":"","msverify":"","yandexverify":"","site_type":"","has_multiple_authors":"","environment_type":"","content_analysis_active":true,"keyword_analysis_active":true,"enable_admin_bar_menu":true,"enable_cornerstone_content":true,"enable_xml_sitemap":true,"enable_text_link_counter":true,"show_onboarding_notice":true,"first_activated_on":1530482035,"website_name":"","alternate_website_name":"","company_logo":"","company_name":"","company_or_person":"","person_name":""}'

wp option update wpseo_titles --format=json '{"title_test":0,"forcerewritetitle":false,"separator":"sc-dash","title-home-wpseo":"","title-author-wpseo":"%%name%%, Author at %%sitename%% %%page%%","title-archive-wpseo":"%%date%% %%page%% %%sep%% %%sitename%%","title-search-wpseo":"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%","title-404-wpseo":"Page not found %%sep%% %%sitename%%","metadesc-home-wpseo":"","metadesc-author-wpseo":"","metadesc-archive-wpseo":"","rssbefore":"","rssafter":"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.","noindex-author-wpseo":false,"noindex-author-noposts-wpseo":true,"noindex-archive-wpseo":true,"disable-author":true,"disable-date":true,"disable-post_format":true,"disable-attachment":false,"is-media-purge-relevant":false,"breadcrumbs-404crumb":"Error 404: Page not found","breadcrumbs-display-blog-page":false,"breadcrumbs-boldlast":false,"breadcrumbs-archiveprefix":"Archives for","breadcrumbs-enable":false,"breadcrumbs-home":"Home","breadcrumbs-prefix":"","breadcrumbs-searchprefix":"You searched for","breadcrumbs-sep":"\u00bb","website_name":"","person_name":"","alternate_website_name":"","company_logo":"","company_name":"","company_or_person":"","stripcategorybase":false,"title-post":"%%title%% - %%sitename%%","metadesc-post":"%%excerpt%%","noindex-post":false,"showdate-post":false,"display-metabox-pt-post":true,"title-page":"%%title%%","metadesc-page":"%%excerpt%%","noindex-page":false,"showdate-page":false,"display-metabox-pt-page":true,"title-attachment":"%%title%% %%page%% %%sep%% %%sitename%%","metadesc-attachment":"","noindex-attachment":true,"showdate-attachment":false,"display-metabox-pt-attachment":false,"title-tax-category":"%%term_title%% Archives %%page%% %%sep%% %%sitename%%","metadesc-tax-category":"","display-metabox-tax-category":false,"noindex-tax-category":true,"title-tax-post_tag":"%%term_title%% Archives %%page%% %%sep%% %%sitename%%","metadesc-tax-post_tag":"","display-metabox-tax-post_tag":false,"noindex-tax-post_tag":true,"title-tax-post_format":"%%term_title%% Archives %%page%% %%sep%% %%sitename%%","metadesc-tax-post_format":"","display-metabox-tax-post_format":false,"noindex-tax-post_format":true,"post_types-post-maintax":0,"title-cookielawinfo":"%%title%% %%page%% %%sep%% %%sitename%%","metadesc-cookielawinfo":"","noindex-cookielawinfo":false,"showdate-cookielawinfo":false,"display-metabox-pt-cookielawinfo":true,"post_types-page-maintax":0,"post_types-cookielawinfo-maintax":0,"breadcrumbs-blog-remove":true,"hideeditbox-post":false,"hideeditbox-page":false,"hideeditbox-attachment":true,"hideeditbox-tax-category":true,"hideeditbox-tax-post_tag":true,"hideeditbox-tax-post_format":true,"hideeditbox-cookielawinfo":false}'


# Activate and Setup Theme
wp theme activate seopress

wp theme mod set seopress_display_top_bar ''
wp theme mod set header_layout 5
wp theme mod set seopress_center_footer_setting "$center_footer"
wp theme mod set seopress_left_footer_setting '<p><a href="/'"$cookie_url"'/">'"$cookie_anchor"'</a></p>'
wp theme mod set sb_menu_onoff 1
wp theme mod set seopress_blog_archive_layout fullw
wp theme mod set seopress_blog_single_layout fullw
wp theme mod set seopress_posts_meta_disply ''
wp theme mod set seopress_post_meta_disply ''
wp theme mod set seopress_sticky_dt_disply ''
wp theme mod set seopress_breadcrumbx_setting ''
wp theme mod set seopress_back_to_top ''

# Additional CSS customizations
wp import css.xml --authors=create
wp theme mod set custom_css_post_id `wp post list --post_type=custom_css --format=ids`

# Create empty menu
wp menu create "main"
wp menu location assign main primary
wp menu location assign main sidebar

# Delete existing posts
wp post delete 1 --force # delete hello world
wp post delete 2 --force # delete sample page
wp post delete 3 --force # delete privacy policy

# Import initial generic posts: privacy policy, cookies policy, contact us...
sed s/mynewdomain.com/`basename $(dirname $(pwd))`/g initialposts.xml > /tmp/import.xml
wp import /tmp/import.xml --authors=create

# Create a new empty page post and set it as front/default initial page
wp option update show_on_front page
wp option update page_on_front `wp post create --post_type=page --post_title="$home" --post_status=publish --porcelain --meta_input='{"_wp_page_template":"template-full-width.php"}'`
