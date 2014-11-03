$ ->
  $('script[type=demo]').each (j) ->
    code = $(this).text()
    height = $(this).attr('height') || 149
    width = $(this).attr('width') || 199
    caption = $(this).attr('caption') || 'see a demo'
    showdemo = (e) ->
      if e then e.preventDefault()
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
            <script>
            function setup(how) {
              speed(Infinity);
              how();
              speed(1);
              setup.again = how;
            }
            function demo(how) {
              pause(1);
              how();
              function go() {
                speed(Infinity);
                pen(null);
                cs();
                home();
                css({opacity: 0.67});
                if (setup.again) setup.again();
                speed(1);
                how();
              }
              click(function() {
                if (!turtle.is(':animated')) {
                  go();
                }
              });
            }
            </script>
            </head>
            <body><script
              src="//pencilcode.net/turtlebits.js"
              crossorigin="anonymous"></script
            ><script type="text/coffeescript">#{code}</script></body></html>
          """
          this.contentWindow.document.close()
          this.scrollIntoView();
          next()
    link = $('<a class="demo" href="#demo' + j + '">' + caption + '</a>')
      .insertBefore(this)
      .wrap('<p style="text-align:center"></p>')
      .on 'click', showdemo
