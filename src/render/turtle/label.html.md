---
title: label
description: writes text under the turtle
layout: reference
---

<b>label</b> writes text at the turtle position.

<code class="jumbo">label <span data-dfn="text">'You are here.'</span></code>

<script type="demo" height=99>
pause 1
go = ->
  speed 1
  cs()
  css opacity: 0.67
  label "X marks the spot", fontFamily: 'serif'
  pause 1
  speed 0.2
  animate
    opacity: .3
go()
click ->
  if not turtle.is ':animated'
    go()
</script>

The text of a label is a <a href="string.html">string</a>, so it should be
quoted.

<h3>Making a bigger label</h3>

<b>label</b> can create a larger label with an optional second argument.

<code default class="jumbo">label <span data-dfn="text">"wow"</span><span data-note="comma">,</span>&nbsp;<span data-dfn="size">100</span></code>

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
