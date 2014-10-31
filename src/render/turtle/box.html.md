---
title: box
description: draws a box under the turtle
layout: reference
---

<b>box</b> can make a square box in any <a href="colors.html">color</a>.
It draws the box under the turtle.

<code class="jumbo">box <span data-dfn="color">blue</span></code>

<script type="demo">
pause 1
box blue
pause 1
label 'blue square &rarr;', 'left'
pause 1
speed 0.2
animate
  opacity: .3
</script>

Dot accepts an optional second argument, which is the side length of the
box in pixels.  Remember that arguments need to be separated by
a comma.

<code default class="jumbo">box <span data-dfn="color">wheat</span><span data-note="comma">,</span>&nbsp;<span data-dfn="size">100</span></code>

<script type="demo">
pause 2
box wheat, 100
pause 1
speed Infinity
plan ->
  ht()
  jump -50, 15
  pen black, 0.7
  bk 30
  jump 0, 15
  slide 50
  label '100 px', 'top'
  slide 50
  jump 0, 15
  bk 30
  pen null
  slide -50, 15
  st()
pause 1
speed 0.2
animate
  opacity: .3
</script>
