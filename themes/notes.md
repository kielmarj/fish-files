# Issues with secondary pager colors

Found in /usr/share/fish/tool/web_config/js/controllers.js :

```js
// TODO: Setting these to empty currently makes them weird. Figure out why!
/*
"fish_pager_color_secondary_background",
"fish_pager_color_secondary_prefix",
"fish_pager_color_secondary_completion",
"fish_pager_color_secondary_description",
*/
```

Currently, it seems that the 4 color variables above should be left out (or commented out) of `.theme` files.
