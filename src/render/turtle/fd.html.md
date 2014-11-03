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

<pre class="jumbo" data-before="pen purple"><span data-dfn="turn the turtle">rt 135</span>

fd <span data-dfn="short">50</span></pre>

<script type="demo">
demo ->
  pause 1
  rt 135
  pause 1
  fd 50
  pause 1
</script>
