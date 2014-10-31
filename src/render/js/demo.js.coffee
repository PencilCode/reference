$ ->
  $('script[type=demo]').each (j) ->
    code = $(this).text()
    height = $(this).attr('height') || 149
    width = $(this).attr('width') || 199
    frame = $('<iframe class="demo">')
      .css({height: height, width:width})
      .insertBefore(this)
      .wrap('<p style="text-align:center"></p>')
      .get(0)
    fn = ->
      frame.contentWindow.document.write """
        <!doctype html>
        <html>
        <head>
        <link rel="stylesheet" type="text/css"
          href="//fonts.googleapis.com/css?family=Lato:400|Source+Code+Pro:400">
        <style>
        body {
          font-family: Lato, Arial, sans-serif;
          font-weight: 400;
          font-size: 14px;
        }
        label {
          line-height: 100%;
        }
        </style>
        </head>
        <body><script
          src="//pencilcode.net/turtlebits.js"
          crossorigin="anonymous"></script
        ><script type="text/coffeescript">#{code}</script></body></html>
      """
      frame.contentWindow.document.close()
    setTimeout fn, 1000 + 5 * 1000 * j
