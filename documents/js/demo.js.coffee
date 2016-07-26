elementInViewport = (el) ->
  if typeof jQuery == 'function' and el instanceof jQuery
    el = el.get(0)
  rect = el.getBoundingClientRect()
  return (
      rect.top >= 0 &&
      rect.left >= 0 &&
      rect.bottom <= (
          window.innerHeight || document.documentElement.clientHeight) &&
      rect.right <= (
          window.innerWidth || document.documentElement.clientWidth)
  )

scrollElementIntoViewport = (el, cb, knownheight) ->
  if typeof jQuery == 'function' and el instanceof jQuery
    el = el.get(0)
  rect = el.getBoundingClientRect()
  bottom = rect.bottom
  if knownheight? then bottom = Math.ceil(rect.top + parseFloat(knownheight))
  bottom += 5
  delta = -rect.top
  if delta < 0
    delta = Math.max(0, Math.min(rect.top, (bottom -
        (window.innerHeight || document.documentElement.clientHeight))))
  if delta is 0
    cb and cb()
    return
  $('body').animate({scrollTop: '+=' + delta}, 'linear', cb)

writeDemoFrame = (frame, code) ->
  frame.contentWindow.document.write """
    <!doctype html>
    <html>
    <head>
    <link rel="stylesheet" type="text/css"
      href="//fonts.googleapis.com/css?family=Lato:400|Source+Code+Pro:400">
    <base href="#{location.href}">
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
      setup.again = how;
    }
    function demo(how) {
      function go() {
        speed(Infinity);
        pen(null);
        cs();
        home();
        css({opacity: 0.67});
        if (setup.again) setup.again();
        pause(1);
        speed(1);
        how();
        pause(1);
        done(function() {
          $('body').append(
            '<a style="display:block;position:fixed;right:5px;bottom:5px;cursor:default">' +
            'click to replay</a>');
        });
      }
      function demo2(how) {
        function go2() {
          await done defer()
          speed(Infinity)
          pen(null)
          home()
          cs()
          speed(1)
          how();
          pause(1);
          done(function() {
            $('body').append(
              '<a style="display:block;position:fixed;right:5px;bottom:5px;cursor:default">' +
              'click to replay</a>');
        }
      }
      go();
      click(function() {
        if (!turtle.queue().length) {
          go();
          go2();
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
  frame.contentWindow.document.close()

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
          writeDemoFrame this, code
      scrollElementIntoViewport frame, null, height
    link = $('<a class="demo" href="#demo' + j + '">' + caption + '</a>')
      .insertBefore(this)
      .wrap('<p style="text-align:center"></p>')
      .on 'click', showdemo

$ ->
  $('script[type=figure]').each (j) ->
    code = $(this).text()
    height = $(this).attr('height') || 149
    width = $(this).attr('width') || 199
    frame = $('<iframe class="demo">')
      .css({height: height, width:width})
      .insertBefore(this)
      .wrap('<p style="text-align:center"></p>')
    writeDemoFrame frame.get(0), code
