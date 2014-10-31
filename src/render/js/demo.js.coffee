$ ->
  $('script[type=demo]').each (j) ->
    code = $(this).text()
    frame = $('<iframe class="demo">').insertBefore(this).get(0)
    fn = ->
      frame.contentWindow.document.write """
        <!doctype html>
        <html>
        <body><script
          src="//pencilcode.net/turtlebits.js"
          crossorigin="anonymous"></script
        ><script type="text/coffeescript">#{code}</script></body></html>
      """
      frame.contentWindow.document.close()
    setTimeout fn, 1000 + 5 * 1000 * j
