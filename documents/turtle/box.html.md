---
title: box
description: draws a box under the turtle
layout: reference
---

`box` can make a square box in any [color](colors.html).
It draws the box under the turtle.

<pre class="jumbo">
box <span data-dfn="color">blue</span>
</pre>

<script type="demo" height=99>
demo ->
  pause 1
  box blue
  pause 1
  label 'blue square &rarr;', 'left'
  pause 1
  speed 0.2
  animate
    opacity: .3
</script>

<h3>Bigger Boxes</h3>

`box` accepts an optional second argument, which is the side
length of the box in pixels.  Remember that arguments need to be
separated by a comma.

<pre default class="jumbo">
box <span data-dfn="color">wheat</span><span data-note="comma">,</span>&nbsp;<span data-dfn="size">100</span>
</pre>

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
    p.slide 50
    p.label '100 px', 'top'
    p.slide 50
    p.jump 0, 15
    p.bk 30
    p.pen null
    p.slide -50, 15
    remove p
  speed 0.2
  animate opacity: .3
</script>

<h3>Other Shapes</h3>

Move the turtle using [`fd`](fd.html) to draw boxes in different places. Use [`dot`](dot.html) to draw a dot instead of a box. Other shapes can be drawn using[`pen`](pen.html). 
