wp plugin activate akismet
wp plugin activate autoptimize
wp plugin activate host-analyticsjs-local
wp plugin activate contact-form-7
wp plugin activate cookie-law-info
wp plugin activate wp-smushit
wp plugin activate wp-gallery-custom-links
wp plugin activate wordpress-seo
wp plugin activate updraftplus
#wp plugin activate gallery-lightbox-slider


wp option update permalink_structure "/%category%/%postname%/"
wp option update timezone_string "Europe/Madrid"
wp option update WPLANG es_ES

wp option update wordpress_api_key "870adb89f494"

wp option update autoptimize_js_exclude seal.js
wp option update autoptimize_html on
wp option update autoptimize_js on
wp option update autoptimize_js_include_inline on
wp option update autoptimize_css on


wp option update CookieLawInfo-0.9 --format=json '{"animate_speed_hide":"500","animate_speed_show":"500","background":"#fff","background_url":"","border":"#444","border_on":true,"button_1_text":"OK","button_1_url":"#","button_1_action":"#cookie_action_close_header","button_1_link_colour":"#fff","button_1_new_win":false,"button_1_as_button":true,"button_1_button_colour":"#2196f3","button_1_button_size":"medium","button_2_text":"Leer m\u00e1s","button_2_url":"\/politica-de-cookies\/","button_2_action":"CONSTANT_OPEN_URL","button_2_link_colour":"#444","button_2_new_win":true,"button_2_as_button":false,"button_2_button_colour":"#333","button_2_button_size":"medium","button_3_text":"Reject","button_3_url":"#","button_3_action":"#cookie_action_close_header_reject","button_3_link_colour":"#fff","button_3_new_win":false,"button_3_as_button":true,"button_3_button_colour":"#000","button_3_button_size":"medium","font_family":"inherit","header_fix":false,"is_on":true,"is_reject_on":false,"notify_animate_hide":true,"notify_animate_show":false,"notify_div_id":"#cookie-law-info-bar","notify_position_horizontal":"right","notify_position_vertical":"bottom","notify_message":"Usamos cookies.[cookie_button] [cookie_link]","scroll_close":false,"scroll_close_reload":false,"accept_close_reload":false,"showagain_background":"#fff","showagain_border":"#000","showagain_text":"Privacy & Cookies Policy","showagain_div_id":"#cookie-law-info-again","showagain_tab":true,"showagain_x_position":"100px","text":"#000","use_colour_picker":true,"show_once_yn":false,"show_once":"10000"}'
wp option update caos_allow_tracking cookie_is_set
wp option update sgal_cookie_notice_name viewed_cookie_policy


