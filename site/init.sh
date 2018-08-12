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
wp option update autoptimize_css_inline on
wp option update autoptimize_css_include_inline on
wp option update autoptimize_show_adv 1
wp option update autoptimize_extra_settings --format=json '{"autoptimize_extra_checkbox_field_1":"1","autoptimize_extra_checkbox_field_0":"1","autoptimize_extra_radio_field_4":"4","autoptimize_extra_text_field_2":"","autoptimize_extra_text_field_3":""}'
wp option update autoptimize_extra_settings --format=json '{"autoptimize_extra_checkbox_field_1":"1","autoptimize_extra_checkbox_field_0":"1","autoptimize_extra_radio_field_4":"4","autoptimize_extra_text_field_2":"","autoptimize_extra_text_field_3":""}'
wp option update autoptimize_css_defer_inline --format=json 'html{font-family:sans-serif;-webkit-text-size-adjust:100%;-ms-text-size-adjust:100%}body{margin:0}nav{display:block}a{background-color:transparent}h1{margin:.67em 0;font-size:2em}img{border:0}button{margin:0;font:inherit;color:inherit}button{overflow:visible}button{text-transform:none}button{-webkit-appearance:button}button::-moz-focus-inner{padding:0;border:0}*{-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box}*:before,*:after{-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box}html{font-size:10px}body{font-family:\"Helvetica Neue\",Helvetica,Arial,sans-serif;font-size:14px;line-height:1.42857143;color:#333;background-color:#fff}button{font-family:inherit;font-size:inherit;line-height:inherit}a{color:#337ab7;text-decoration:none}img{vertical-align:middle}.sr-only{position:absolute;width:1px;height:1px;padding:0;margin:-1px;overflow:hidden;clip:rect(0,0,0,0);border:0}h1,h3{font-family:inherit;font-weight:500;line-height:1.1;color:inherit}h1,h3{margin-top:20px;margin-bottom:10px}h1{font-size:36px}h3{font-size:24px}p{margin:0 0 10px}ul{margin-top:0;margin-bottom:10px}.container{padding-right:15px;padding-left:15px;margin-right:auto;margin-left:auto}@media (min-width:768px){.container{width:750px}}@media (min-width:992px){.container{width:970px}}@media (min-width:1200px){.container{width:1170px}}.container-fluid{padding-right:15px;padding-left:15px;margin-right:auto;margin-left:auto}.row{margin-right:-15px;margin-left:-15px}.col-md-4,.col-md-8{position:relative;min-height:1px;padding-right:15px;padding-left:15px}@media (min-width:992px){.col-md-4,.col-md-8{float:left}.col-md-8{width:66.66666667%}.col-md-4{width:33.33333333%}}.collapse{display:none}.nav{padding-left:0;margin-bottom:0;list-style:none}.nav>li{position:relative;display:block}.nav>li>a{position:relative;display:block;padding:10px 15px}.navbar{position:relative;min-height:50px;margin-bottom:20px;border:1px solid transparent}@media (min-width:768px){.navbar{border-radius:4px}}@media (min-width:768px){.navbar-header{float:left}}.navbar-collapse{padding-right:15px;padding-left:15px;overflow-x:visible;-webkit-overflow-scrolling:touch;border-top:1px solid transparent;-webkit-box-shadow:inset 0 1px 0 rgba(255,255,255,.1);box-shadow:inset 0 1px 0 rgba(255,255,255,.1)}@media (min-width:768px){.navbar-collapse{width:auto;border-top:0;-webkit-box-shadow:none;box-shadow:none}.navbar-collapse.collapse{display:block!important;height:auto!important;padding-bottom:0;overflow:visible!important}}.container>.navbar-header,.container>.navbar-collapse{margin-right:-15px;margin-left:-15px}@media (min-width:768px){.container>.navbar-header,.container>.navbar-collapse{margin-right:0;margin-left:0}}.navbar-toggle{position:relative;float:right;padding:9px 10px;margin-top:8px;margin-right:15px;margin-bottom:8px;background-color:transparent;background-image:none;border:1px solid transparent;border-radius:4px}.navbar-toggle .icon-bar{display:block;width:22px;height:2px;border-radius:1px}.navbar-toggle .icon-bar+.icon-bar{margin-top:4px}@media (min-width:768px){.navbar-toggle{display:none}}.navbar-nav{margin:7.5px -15px}.navbar-nav>li>a{padding-top:10px;padding-bottom:10px;line-height:20px}@media (min-width:768px){.navbar-nav{float:left;margin:0}.navbar-nav>li{float:left}.navbar-nav>li>a{padding-top:15px;padding-bottom:15px}}.navbar-default{background-color:#f8f8f8;border-color:#e7e7e7}.navbar-default .navbar-nav>li>a{color:#777}.navbar-default .navbar-nav>.active>a{color:#555;background-color:#e7e7e7}.navbar-default .navbar-toggle{border-color:#ddd}.navbar-default .navbar-toggle .icon-bar{background-color:#888}.navbar-default .navbar-collapse{border-color:#e7e7e7}.clearfix:before,.clearfix:after,.container:before,.container:after,.container-fluid:before,.container-fluid:after,.row:before,.row:after,.nav:before,.nav:after,.navbar:before,.navbar:after,.navbar-header:before,.navbar-header:after,.navbar-collapse:before,.navbar-collapse:after{display:table;content:\" \"}.clearfix:after,.container:after,.container-fluid:after,.row:after,.nav:after,.navbar:after,.navbar-header:after,.navbar-collapse:after{clear:both}@-ms-viewport{width:device-width}@font-face{font-family:'FontAwesome';src:url(\/\/salamanca.store\/app\/themes\/seopress\/css\/..\/fonts\/fontawesome-webfont.eot?v=4.7.0);src:url(\/\/salamanca.store\/app\/themes\/seopress\/css\/..\/fonts\/fontawesome-webfont.eot?#iefix&v=4.7.0) format('embedded-opentype'),url(\/\/salamanca.store\/app\/themes\/seopress\/css\/..\/fonts\/fontawesome-webfont.woff2?v=4.7.0) format('woff2'),url(\/\/salamanca.store\/app\/themes\/seopress\/css\/..\/fonts\/fontawesome-webfont.woff?v=4.7.0) format('woff'),url(\/\/salamanca.store\/app\/themes\/seopress\/css\/..\/fonts\/fontawesome-webfont.ttf?v=4.7.0) format('truetype'),url(\/\/salamanca.store\/app\/themes\/seopress\/css\/..\/fonts\/fontawesome-webfont.svg?v=4.7.0#fontawesomeregular) format('svg');font-weight:normal;font-style:normal}.fa{display:inline-block;font:normal normal normal 14px\/1 FontAwesome;font-size:inherit;text-rendering:auto;-webkit-font-smoothing:antialiased;-moz-osx-font-smoothing:grayscale}.fa-chevron-up:before{content:\"\\f077\"}.fa-bars:before{content:\"\\f0c9\"}.sr-only{position:absolute;width:1px;height:1px;padding:0;margin:-1px;overflow:hidden;clip:rect(0,0,0,0);border:0}body{overflow-x:hidden;overflow-y:auto}.size-medium{max-width:100%;height:auto}.mrt20{margin-top:20px}.mrb20{margin-bottom:20px}.pdt15{padding-top:15px}.pdb15{padding-bottom:15px}.aligncenter{display:block;margin:5px auto}.alignleft{float:left;margin:5px 20px 20px 0}a img.alignleft{margin:5px 20px 20px 0}a img.alignleft{float:left}#navbarouter{z-index:999;width:100%}#navbar{border-radius:0}.navbar{border:1px solid transparent!important;margin-bottom:0}.navbar{border:1px solid transparent!important;margin-bottom:0}.navbar-default .navbar-nav>.active>a{background-color:unset}.navbar-collapse{padding-left:0;padding-right:0}@media (max-width:767px){.navbar-collapse{padding-left:15px;padding-right:15px}}.side-menu-menu-button{border-radius:2px;height:35px;line-height:31px;position:fixed;left:20px;bottom:20px;text-align:center;text-decoration:none;width:35px;z-index:99999;background-color:#337ab7;color:#fff}.side-menu-close-button{width:1em;height:1em;position:absolute;right:1em;top:1em;overflow:hidden;text-indent:1em;font-size:.75em;border:0;background:transparent;color:transparent}.side-menu-close-button::before,.side-menu-close-button::after{content:'';position:absolute;width:3px;height:100%;top:0;left:50%;background:#dce2e6}.side-menu-close-button::before{-webkit-transform:rotate(45deg);transform:rotate(45deg)}.side-menu-close-button::after{-webkit-transform:rotate(-45deg);transform:rotate(-45deg)}.side-menu-menu-wrap{position:fixed;top:0;left:0;z-index:999999;width:280px;height:100%;padding:2.5em 1.5em 0;font-size:1.15em;-webkit-transform:translate3d(-320px,0,0);transform:translate3d(-320px,0,0);background-color:rgba(52,122,183,.8)}.left-content{min-height:400px}.content-third{padding:10px}a{text-decoration:none}.content-first .content-second h1.the-title{border-left:3px solid;padding:9px 14px}.right-content{overflow:hidden}#back-to-top{border-radius:2px;height:35px;line-height:31px;opacity:0;position:fixed;right:20px;bottom:20px;text-align:center;text-decoration:none;width:35px;display:none;z-index:99999}.content-first .content-second h1.the-title{color:#fff}.content-first .content-second h1.the-title{background-color:#337ab7}.content-first .content-second h1.the-title{border-color:#000!important}#back-to-top{color:#fff}#back-to-top{background-color:#337ab7}#navbar ul li a{color:#fff}#navbar .current-menu-item a,#navbar .current_page_item a{color:#000!important}#navbar{background-color:#337ab7}#navbar .current-menu-item{background-color:#e7e7e7}.headermain{background-color:#fff}.navbar-default .navbar-toggle{background-color:#f3f3f3}'


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
