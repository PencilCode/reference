---
title: movexy
description: moves the turtle by an xy offset 
layout: reference
section: drawing
refOrder: 0
---

The turtle starts in the middle of the window, at (x, y) coordinates
(0, 0).

`movexy x, y` moves by an xy offset in
traditional Cartesian coordinates.  In this coordinate system,
each unit is one pixel, and each graph paper grid square is 25 units.
The mathematical coordinate axes are used, placing (0, 0)
at the middle with x increasing to the right and y increasing upward.

A vector represented as an array of two numbers can be used.
`movexy [x, y]` is treated the same as
`movexy x, y`.

<script type="figure" width=299 height=249>
turtle.css opacity: 0.3, turtlePenStyle: silver, turtlePenDown: true
p = new Pencil
p.cross = ->
  @pen black, 0.7
  @jump -5, 0
  @slide 10
  @jump -5, -5
  @fd 10
  @jump 0, -5
p.label 'origin', id: 'where', labelSide: 'top right', turtleSpeed: Infinity
p.pen black, 1.5
p.jumpto -8, 0
p.rt 360, 8
p.jumpto 0, 250
p.moveto 0, -250
p.jumpto -250, 0
p.moveto 250, 0
p.jumpto 105, 110
p.label 'x > 0,&emsp;y > 0'
p.jumpto 105, -110
p.label 'x > 0,&emsp;y < 0'
p.jumpto -105, 110
p.label 'x < 0,&emsp;y > 0'
p.jumpto -105, -110
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
click (e) ->
  $('#where').text "#{e.x}, #{e.y}"
  $('#where').jumpto e.x, e.y
  movexy e.x, e.y
</script>

### Drawing while Moving

<code>movexy</code> will trace lines if a pen is being used.  It allows
lines to be drawn between any points without worrying about the angle
and distance of the turtle.  <code>movexy</code> does not affect the
turtle rotation, only its position.

</script>

<pre class="examp">
pen peru
movexy 50, 50
movexy -75, -25
movexy 0, -50
movexy <span data-dfn="x">-125</span>, <span data-dfn="y">100</span>
</pre>

<script type="demo" width=500 height=249>
p = new Pencil
p.cross = ->
  @pen black, 0.7
  @jump -5, 0
  @slide 10
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
  movexy 50, 50
  plan ->
    p.jumpto turtle
    p.cross()
    p.label 'movexy 50, 50', 'top'
  moveto -75, -25
  plan ->
    p.jumpto turtle
    p.cross()
    p.jump 0, -8
    p.label 'movexy -75, -25', 'left'
  movexy 0, -50
  plan ->
    p.jumpto turtle
    p.cross()
    p.label 'movexy 0, -50', 'left'
  movexy -125, 100
  plan ->
    p.jumpto turtle
    p.cross()
    p.label 'movexy 125, 0', 'right'
</script>

### Limiting Motion

When passing a single location object to <code>movexy</code>, it supports
an optional second argument limiting the distance of the motion.  When the
second argument is given, the turtle will move towards the location, but
no farther than the limiting distance in pixels.

The following program will move the turtle towards the last mouse event
twice per second, but will move no more than 10 pixels each time.

<pre class="examp">
pen green
forever 2, ->
  movexy lastmouse, <span data-dfn="limiting distance">10</span>
</pre>

<script type="demo" width=299 height=249>
setup ->
  stop()
demo ->
  pen green
  forever 2, ->
    movexy lastmouse, 10
</script>

In all these uses, <code>movexy</code> moves the turtle without changing
its direction (the way it's facing).

Blah blah - let's compare moveto and movexy

### `moveto` versus `movexy`

<script type="demo" width=299 height=249>
setup ->
  pen null
demo ->
  jumpto 50, 100
  dot blue, 30
  label "x50, y100", 'top'
  fd 50
  home
  s = new Turtle
  s.label "movexy", 'left'
  s.pen blue
  s.pen red
  s.movexy 50, 100
  pause 2
  j = new Turtle
  j.rt 90
  j.fd 100
  j.pen green
  j.label "moveto", 'right'
  j.moveto 50, 100
</script>


