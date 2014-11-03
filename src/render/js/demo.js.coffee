$ ->
  $('script[type=demo]').each (j) ->
    code = $(this).text()
    height = $(this).attr('height') || 149
    width = $(this).attr('width') || 199
    caption = $(this).attr('caption') || 'see a demo'
    showdemo = ->
      linkheight = link.height()
      frame = $('<iframe class="demo">')
        .replaceAll(link)
        .css({height: linkheight, width:width})
        .animate({height: height})
        .queue (next) ->
          this.contentWindow.document.write """
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
          this.contentWindow.document.close()
          next()
    link = $('<a class="demo" href="#demo' + j + '">' + caption + '</a>')
      .insertBefore(this)
      .wrap('<p style="text-align:center"></p>')
      .on 'click', showdemo
