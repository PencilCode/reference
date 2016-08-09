---
title: dot
description: draws a dot under the turtle
layout: reference
---

`dot` can make a dot in any <a href="colors.html">color</a>.
It draws the dot under the turtle.

<pre class="jumbo">
dot <span data-dfn="color">red</span>
</pre>

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

<h3>Bigger Dots</h3>

<b>dot</b> accepts an optional second argument, which is the diameter of
the dot in pixels.  Remember that arguments need to be separated by
a comma.

<pre class="jumbo">
dot <span data-dfn="color">skyblue</span><span data-note="comma">,</span>&nbsp;<span data-dfn="size">100</span>
</pre>

<script type="demo">
demo ->
  pause 1
  dot skyblue, 100
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

<p>Move the turtle using [fd](fd.html) to draw dots in
different places.  Use [box](box.html) to draw a box
instead of a dot. Other shapes can be drawn using
[pen](pen.html).
