---
title: pen
description: changes the pen color
layout: reference
section: basic
refOrder: 2
---

<b>pen</b> will pick a drawing color (see [the color table](colors.html))
When the turtle moves, it will trace out a line in the pen color.

<pre class="jumbo">pen <span data-dfn="color">blueviolet</span></pre>

<script type="demo" height=99>
p = new Pencil
setup ->
  moveto -50, 0
  turnto 90
demo ->
  plan ->
    p.home()
    p.fd 20
    p.label 'pen blueviolet',
      labelSide: 'top', fontFamily: 'monospace', lineHeight: '140%'
  pause 0.5
  pen blueviolet
  pause 1
  plan ->
    $('label').eq(0).append('<br>fd 100');
  pause 0.5
  fd 100
  pause 2
  plan ->
    p.home()
    p.pen black, 0.7
    p.lt 45
    p.bk 5
    p.home()
    p.rt 45
    p.bk 5
    p.home()
    p.bk 15
    p.pen null
    p.label 'blueviolet color', 'bottom'
</script>


<h3>Thick Lines</h3>

<b>pen</b> accepts an optional second argument, which is the width of the
pen in pixels.  Remember that arguments need to be separated by
a comma.

<code class="jumbo" data-after="fd 100">pen <span data-dfn="color">pink</span><span data-note="comma">,</span>&nbsp;<span data-dfn="size">20</span></code>

<script type="demo" height=99>
p = new Pencil
setup ->
  moveto -50, 0
  turnto 90
demo ->
  plan ->
    p.home()
    p.fd 20
    p.label 'pen pink, 20',
      labelSide: 'top', fontFamily: 'monospace', lineHeight: '140%'
  pause 0.5
  pen pink, 20
  pause 1
  plan ->
    $('label').eq(0).append('<br>fd 100');
  pause 0.5
  fd 100
  pause 2
  plan ->
    p.home()
    p.pen black, 0.7
    p.jump 0, -10
    p.lt 45
    p.bk 5
    p.home()
    p.jump 0, -10
    p.rt 45
    p.bk 5
    p.home()
    p.jump 0, -10
    p.bk 15
    p.pen null
    p.label 'pink color', 'bottom'
</script>

<h3>Line Cap Styles</h3>

<b>pen</b> accepts an optional third argument, which is the name of
a line-cap style to use.

| line-cap style    | pen shape                              | useful for      |
|-------------------|----------------------------------------|-----------------|
| 'round' (default) | circle of diameter equal to line width | general drawing |
| 'square'          | square as wide as the line             | 90&deg; corners |
| 'butt'            | flat brush as wide as the line width   | bar charts      |


The <code>pen path</code> version of the <code>pen</code> command is used with [fill](fill.html)
