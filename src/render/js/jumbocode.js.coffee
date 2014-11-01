$ ->
  $('code.jumbo,pre.jumbo').each (j) ->
    jumbo = $(this)
    p = jumbo.parent('p')
    if not p.length
      p = jumbo.wrap('<p>').parent('p')
    p.css('text-align', 'center')

    # "To the right" definitions
    jumbo.find('span[data-dfnright]').each ->
      span = $(this)
      span.css
        display: 'block'
        lineHeight: 'inherit'
        position: 'relative'
      annotation = $('<dfn>').css
        position: 'absolute'
        width: span.height()
        top: 0
        left: span.width() + 36
        transformOrigin: '0 0'
        transform: 'rotate(90deg)'
      sexp = $('<span>').text(span.data('dfnright'))
      exp = $('<div>').append(sexp)
      exp.css
        whiteSpace: 'nowrap'
        marginLeft: -25
        marginRight: -25
      exp.appendTo(annotation)
      middiv = $('<div>').css
        borderRight: '1px solid black'
        width: span.height() / 2
        height: 5
      middiv.appendTo(annotation)
      botdiv = $('<div>').css
        borderTop: '1px solid black'
        borderLeft: '1px solid black'
        borderRight: '1px solid black'
        height: 5
      botdiv.appendTo(annotation)
      annotation.appendTo(span)

    # "Below" definitions
    jumbo.find('span[data-dfn]').each ->
      span = $(this)
      span.css
        position: 'relative'
      annotation = $('<dfn>').css
        position: 'absolute'
        left: 0
        top: span.height()
        width: span.width()
      topdiv = $('<div>').css
        borderBottom: '1px solid black'
        borderLeft: '1px solid black'
        borderRight: '1px solid black'
        height: 5
      topdiv.appendTo(annotation)
      middiv = $('<div>').css
        borderRight: '1px solid black'
        width: span.width() / 2
        height: 5
      middiv.appendTo(annotation)
      sexp = $('<span>').text(span.data('dfn'))
      exp = $('<div>').append(sexp)
      exp.css
        whiteSpace: 'nowrap'
        marginLeft: -25
        marginRight: -25
      exp.appendTo(annotation)
      annotation.appendTo(span)

    # "Above" definitions
    jumbo.find('span[data-dfnup]').each ->
      span = $(this)
      span.css
        position: 'relative'
      annotation = $('<dfn>').css
        position: 'absolute'
        left: 0
        bottom: span.height()
        width: span.width()
      sexp = $('<span>').text(span.data('dfnup'))
      exp = $('<div>').append(sexp)
      exp.css
        whiteSpace: 'nowrap'
        marginLeft: -25
        marginRight: -25
      exp.appendTo(annotation)
      middiv = $('<div>').css
        borderRight: '1px solid black'
        width: span.width() / 2
        height: 5
      middiv.appendTo(annotation)
      botdiv = $('<div>').css
        borderTop: '1px solid black'
        borderLeft: '1px solid black'
        borderRight: '1px solid black'
        height: 5
      botdiv.appendTo(annotation)
      annotation.appendTo(span)

    # "Below" pointer notes.
    jumbo.find('span[data-note]').each ->
      span = $(this)
      span.css
        position: 'relative'
      annotation = $('<dfn>').css
        position: 'absolute'
        left: 0
        top: span.height()
        width: span.width()
      middiv = $('<div>').css
        borderRight: '1px solid black'
        width: span.width() / 2
        height: 48
      middiv.appendTo(annotation)
      sexp = $('<span>').text(span.data('note'))
      exp = $('<div>').append(sexp)
      exp.css
        whiteSpace: 'nowrap'
      exp.appendTo(annotation)
      annotation.appendTo(span)
      exp.css
        position: 'absolute'
      exp.css
        marginLeft: (span.width() - exp.width()) / 2
    origbox = jumbo.get(0).getBoundingClientRect();
    box = $.extend {}, origbox
    jumbo.find('span').each ->
      spanbox = this.getBoundingClientRect()
      box.bottom = Math.max(spanbox.bottom + 3, box.bottom)
      box.right = Math.max(spanbox.right + 5, box.right)
      box.top = Math.min(spanbox.top - 3, box.top)
      box.left = Math.min(spanbox.left - 5, box.left)
    jumbo.css
      paddingRight: "+=" + (box.right - origbox.right)
      paddingLeft: "+=" + (origbox.left - box.left)
      paddingBottom: "+=" + (box.bottom - origbox.bottom)
      paddingTop: "+=" + (origbox.top - box.top)

