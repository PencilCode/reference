---
title: box
description: draws a box under the turtle
layout: reference
---

<b>box</b> can make a square box in any <a href="colors.html">color</a>.
It draws the box under the turtle.

<code class="jumbo">box <span data-dfn="color">blue</span></code>

<script type="demo" height=99>
demo ->
  pause 1
  dot red
  pause 1
  label 'red circle &rarr;', 'left'
  pause 1
  speed 0.2
  animate
    opacity: .3
</script>

<h3>Bigger Boxes</h3>

<b>box</b> accepts an optional second argument, which is the side
length of the box in pixels.  Remember that arguments need to be
separated by a comma.

<code default class="jumbo">box <span data-dfn="color">wheat</span><span data-note="comma">,</span>&nbsp;<span data-dfn="size">100</span></code>

<script type="demo">
demo ->
  pause 1
  box wheat, 100
  pause 2
  plan ->
    p = new Pencil
    p.jump -50, 15
    p.pen black, 0.7
    p.bk 30
    p.jump 0, 15
    p.move 50
    p.label '100 px', 'top'
    p.move 50
    p.jump 0, 15
    p.bk 30
    p.pen null
    p.move -50, 15
    remove p
  speed 0.2
  animate opacity: .3
</script>

<h3>Other Shapes</h3>

<p>Move the turtle using <a href="fd.html">fd</a> to draw boxes in
different places.  Use <a href="dot.html">box</a> to draw a dot
instead of a box. Other shapes can be drawn using
<a href="pen.html">pen</a>.
