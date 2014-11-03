---
title: box
description: draws a box under the turtle
layout: reference
---

<b>box</b> can make a square box in any <a href="colors.html">color</a>.
It draws the box under the turtle.

<code class="jumbo">box <span data-dfn="color">blue</span></code>

<script type="demo" height=99>
pause 1
go = ->
  speed 1
  cs()
  css opacity: 0.67
  dot red
  pause 1
  label 'red circle &rarr;', 'left'
  pause 1
  speed 0.2
  animate
    opacity: .3
go()
click ->
  if not turtle.is ':animated'
    go()
</script>

<h3>Bigger Boxes</h3>

<b>box</b> accepts an optional second argument, which is the side
length of the box in pixels.  Remember that arguments need to be
separated by a comma.

<code default class="jumbo">box <span data-dfn="color">wheat</span><span data-note="comma">,</span>&nbsp;<span data-dfn="size">100</span></code>

<script type="demo">
go = ->
  speed 1
  cs()
  css opacity: 0.67
  box wheat, 100
  pause 1
  speed Infinity
  plan ->
    ht()
    jump -50, 15
    pen black, 0.7
    bk 30
    jump 0, 15
    move 50
    label '100 px', 'top'
    move 50
    jump 0, 15
    bk 30
    pen null
    move -50, 15
    st()
  pause 1
  speed 0.2
  animate opacity: .3
pause 2
go()
click ->
  if not turtle.is ':animated'
    go()
</script>
