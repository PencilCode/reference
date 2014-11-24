---
title: moveto
description: moves the turtle to an absolute location
layout: reference
section: drawing
refOrder: 0
---

The turtle starts in the middle of the window, at (x, y) coordinates
(0, 0).

<code>moveto x, y</code> moves to an absolute location in
traditional cartesian coordinates.  In this coordinate system,
Each unit is a pixel, and each graph paper grid square is 25 units.
The traditional mathematical coordinate axis are used, centered
at the middle with x increasing to the right and y increasing upward.

<script type="figure" width=299 height=249>
turtle.css opacity: 0.3
p = new Pencil
p.cross = ->
  @pen black, 0.7
  @jump -5, 0
  @move 10
  @jump -5, -5
  @fd 10
  @jump 0, -5
p.label 'origin', 'top right'
p.pen black, 1.5
p.jumpto -8, 0
p.rt 360, 8
p.jumpto 0, 250
p.moveto 0, -250
p.jumpto -250, 0
p.moveto 250, 0
p.jumpto 100, 75
p.label 'x > 0,&emsp;y > 0'
p.jumpto 100, -75
p.label 'x > 0,&emsp;y < 0'
p.jumpto -100, 75
p.label 'x < 0,&emsp;y > 0'
p.jumpto -100, -75
p.label 'x < 0,&emsp;y < 0'
p.jumpto 50, 0
p.cross()
p.label '50', 'bottom'
p.jumpto 100, 0
p.cross()
p.label '100', 'bottom'
p.jumpto -50, 0
p.cross()
p.label '-50', 'bottom'
p.jumpto -100, 0
p.cross()
p.label '-100', 'bottom'
p.jumpto 0, 50
p.cross()
p.label '50', 'left'
p.jumpto 0, 100
p.cross()
p.label '100', 'left'
p.jumpto 0, -50
p.cross()
p.label '-50', 'left'
p.jumpto 0, -100
p.cross()
p.label '-100', 'left'
p.jumpto 140, 0
p.label 'x', 'top'
p.jumpto 0, 115
p.label 'y', 'right'
</script>

### Drawing while Moving

<code>moveto</code> will trace lines if a pen is being used.  It allows
lines to be drawn between any points without worrying about the angle
and distance of the turtle.  <code>moveto</code> does not affect the
turtle rotation, only its position.

</script>

<pre class="examp">
pen peru
moveto 50, 50
moveto -75, -25
moveto 0, -50
moveto -126, 100
</pre>

<script type="demo" width=299 height=249>
p = new Pencil
p.cross = ->
  @pen black, 0.7
  @jump -5, 0
  @move 10
  @jump -5, -5
  @fd 10
  @jump 0, -5
setup ->
  p.pen silver, 1.5
  p.jumpto 0, 250
  p.moveto 0, -250
  p.jumpto -250, 0
  p.moveto 250, 0
demo ->
  pen peru
  moveto 50, 50
  plan ->
    p.jumpto turtle
    p.cross()
    p.label 'moveto 50, 50', 'top'
  moveto -75, -25
  plan ->
    p.jumpto turtle
    p.cross()
    p.jump 0, -8
    p.label 'moveto -75, -25', 'bottom'
  moveto 0, -50
  plan ->
    p.jumpto turtle
    p.cross()
    p.label 'moveto 0, -50', 'right'
  moveto -125, 100
  plan ->
    p.jumpto turtle
    p.cross()
    p.label 'moveto -125, 100', 'right'
</script>

### Using HTML Coordinates

The native coordinate system supported by HTML follows a different
convention: it places the (x, y) origin at the upper-left corner of
the page.  <code>x</code> increases to the right, but
<code>y</code> is inverted: <code>y</code> increases going down.

<script type="figure" width=299 height=249>
turtle.css opacity: 0.3
p = new Pencil
p.cross = ->
  @pen black, 0.7
  @jump -5, 0
  @move 10
  @jump -5, -5
  @fd 10
  @jump 0, -5
p.jumpto pageX: 22, pageY: 22
p.label 'origin', 'bottom right'
p.jumpto pageX: 31, pageY: 31
p.pen black, 0.7
p.moveto pageX: 0, pageY: 0
p.pen black, 1.5
p.jumpto pageX: -7.5, pageY: 0.5
p.rt 360, 8
p.jumpto pageX: 0.5, pageY: 0.5
p.moveto pageX: 0.5, pageY: 300
p.jumpto pageX: 0.5, pageY: 0.5
p.moveto pageX: 300, pageY: 0.5
p.jumpto pageX: 50, pageY: 0.5
p.cross()
p.label '50', 'bottom'
p.jumpto pageX: 100, pageY: 0
p.cross()
p.label '100', 'bottom'
p.jumpto pageX: 150, pageY: 0
p.cross()
p.label '150', 'bottom'
p.jumpto pageX: 200, pageY: 0
p.cross()
p.label '200', 'bottom'
p.jumpto pageX: 250, pageY: 0
p.cross()
p.label '250', 'bottom'
p.jumpto pageX: 0, pageY: 50
p.cross()
p.label '50', 'right'
p.jumpto pageX: 0, pageY: 100
p.cross()
p.label '100', 'right'
p.jumpto pageX: 0, pageY: 150
p.cross()
p.label '150', 'right'
p.jumpto pageX: 0, pageY: 200
p.cross()
p.label '200', 'right'
p.jumpto pageX: 290, pageY: 0
p.label 'x', 'bottom'
p.jumpto pageX: 0, pageY: 240
p.label 'y', 'right'
</script>

<code>moveto</code> supports native HTML coorenates by accepting
any object that has <code>pageX</code> and <code>pageY</code> properties.

<pre class="examp">
moveto pageX: 50, pageY: 100
pen slateblue
moveto pageX: 150, pageY: 200
moveto pageX: 250, pageY: 100
</pre>

<script type="demo" width=299 height=249>
p = new Pencil
p.cross = ->
  @pen black, 0.7
  @jump -5, 0
  @move 10
  @jump -5, -5
  @fd 10
  @jump 0, -5
setup ->
  p.pen silver, 1.5
  p.jumpto pageX: -7.5, pageY: 0.5
  p.rt 360, 8
  p.jumpto pageX: 0.5, pageY: 0.5
  p.moveto pageX: 0.5, pageY: 300
  p.jumpto pageX: 0.5, pageY: 0.5
  p.moveto pageX: 300, pageY: 0.5
  p.jumpto pageX: 50, pageY: 0.5
demo ->
  moveto pageX: 50, pageY: 100
  pen slateblue
  moveto pageX: 150, pageY: 200
  moveto pageX: 250, pageY: 100
</script>

