---
title: dot
description: draws a dot under the turtle
layout: reference
---

<b>dot</b> can make a dot in any <a href="colors.html">color</a>.
It draws the dot under the turtle.

<code class="jumbo">dot <span data-dfn="color">red</span></code>

<script type="demo" height=99>
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
pause 1
go()
click ->
  if not turtle.is ':animated'
    go()
</script>

<b>dot</b> accepts an optional second argument, which is the diameter of
the dot in pixels.  Remember that arguments need to be separated by
a comma.

<code default class="jumbo">dot <span data-dfn="color">skyblue</span><span data-note="comma">,</span>&nbsp;<span data-dfn="size">100</span></code>

<script type="demo">
go = ->
  speed 1
  cs()
  css opacity: 0.67
  dot skyblue, 100
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
  animate opacity: .3
pause 2
go()
click ->
  if not turtle.is ':animated'
    go()
</script>

