---
title: fd
description: moves the turtle forward
layout: reference
---

<b>fd</b> moves the turtle forward.

The distance is measured in pixels.

<code class="jumbo">fd&nbsp;<span data-dfn="distance">100</span></code>

<script type="demo" width=99>
setup ->
  bk 50
demo ->
  pause 1
  fd 100
  pause 1
  plan ->
    p = new Pencil
    p.jumpto 20, 50
    p.pen black, .7
    p.moveto 25, 50
    p.moveto 25, -50
    p.moveto 20, -50
    p.pen null
    p.jumpto 35, 0
    p.rt 90
    p.label '100 pixels'
    remove p
</script>

If a <a href="pen.html">pen</a> is selected, the turtle will draw a line as it moves.

<pre class="jumbo"><span data-dfn="pick a pen">pen red</span>

fd <span data-dfn="longer">200</a></pre>

<script type="demo" width=99 height=249>
setup ->
  bk 100
demo ->
  pause 1
  pen red
  fd 200
  pause 1
  plan ->
    p = new Pencil
    p.jumpto 20, 100
    p.pen black, .7
    p.moveto 25, 100
    p.moveto 25, -100
    p.moveto 20, -100
    p.pen null
    p.jumpto 35, 0
    p.rt 90
    p.label '200 pixels'
    remove p
</script>

If the turtle is turned, it will move in the direction it points.

<pre class="jumbo" data-before="pen purple"><span data-dfn="turn the turtle">rt 45</span>

fd <span data-dfn="shorter">75</span></pre>

<script type="demo">
setup ->
  bk 25
p = new Pencil
demo ->
  plan ->
    p.home()
    p.pen black, .7
    p.jumpto 0, -30
    p.moveto 0, -20
    p.jumpto -5, -25
    p.moveto 5, -25
    p.pen null
    p.jumpto 0, -25
    label 'home', 'left'
  pause 1
  rt 45
  pause 1
  fd 75
  pause 1
  plan ->
    p.jumpto 0, -25
    p.rt 45
    p.jump 10
    p.pen black, .7
    p.move 5
    p.fd 75
    p.move -5
    p.pen null
    p.move 20, -75/2
    p.lt 90
    p.label '75 pixels'

</script>

<h3>Turtle Distances</h3>

<b>fd 100</b> moves about an inch on a typical screen, because
most computers fit about 100 pixels in an inch.  The graph paper
background is equivalent to a 1/4 inch grid: it has one square per
25 pixels.

