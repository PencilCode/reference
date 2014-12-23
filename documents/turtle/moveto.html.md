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

A vector represented as an array of two numbers can be used.
<code>moveto [x, y]</code> is treated the same as
<code>moveto x, y</code>.

<script type="figure" width=299 height=249>
turtle.css opacity: 0.3, turtlePenStyle: silver, turtlePenDown: true
p = new Pencil
p.cross = ->
  @pen black, 0.7
  @jump -5, 0
  @move 10
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
  moveto e.x, e.y
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
moveto <span data-dfn="x">-125</span>, <span data-dfn="y">100</span>
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
convention: it places the (pageX, pageY) origin at the upper-left corner
of the page.  <code>pageX</code> increases to the right, but
<code>pageY</code> is inverted: <code>pageY</code> increases going down.

<script type="figure" width=299 height=249>
turtle.css opacity: 0.3, turtlePenStyle: silver, turtlePenDown: true
p = new Pencil
p.cross = ->
  @pen black, 0.7
  @jump -5, 0
  @move 10
  @jump -5, -5
  @fd 10
  @jump 0, -5
p.jumpto pageX: 22, pageY: 22
p.label 'origin', id: 'where', labelSide: 'bottom right', turtleSpeed: Infinity
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
p.jumpto pageX: 275, pageY: -3
p.label 'pageX', 'bottom'
p.jumpto pageX: -3, pageY: 240
p.label 'pageY', 'right'
click (e) ->
  $('#where').html "pageX: #{e.pageX}<br>pageY: #{e.pageY}"
  $('#where').jumpto e
  moveto e
</script>

<code>moveto</code> supports native HTML coordinates if they are passed
with the <code>pageX</code> and <code>pageY</code> properties.  Note
that HTML mouse events all have pageX and pageY properties, so
<code>moveto lastclick</code> will move to the location of the last
mouse click.

<pre class="examp">
moveto pageX: 50, pageY: 100
pen slateblue
moveto pageX: 150, pageY: 200
moveto pageX: 250, pageY: 100
moveto lastclick
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
  label 'pageX: 50<br>pageY: 100', 'top'
  pen slateblue
  moveto pageX: 150, pageY: 200
  label 'pageX: 150, pageY: 200', 'bottom'
  moveto pageX: 250, pageY: 100
  label 'pageX: 250<br>pageY: 100', 'top'
  plan ->
    if lastclick.pageX and lastclick.pageY
      moveto lastclick
      label 'lastclick', if lastclick.pageY > 100 then 'bottom' else 'top'
</script>

### Other Locations

<code>moveto</code> will also move to any element or jQuery object or
any other object that supports a pagexy() method that returns page
coordinates.  For example <code>moveto otherturtle</code> will move
to the location of another turtle.

Here is a summary of some types of locations that
<code>moveto</code> understands.

| example       | motion                                                       |
|---------------|--------------------------------------------------------------|
| <code>moveto x, y</code> | move to (x, y) in traditional mathematical y-up coordinates. |
| <code>moveto [x, y]</code> | same as <code>moveto x, y</code> |
| <code>moveto pageX: px, pageY: py</code> | move using HTML page coordinates. |
| <code>moveto lastmouse</code> | move to the location of the last mouse event.|
| <code>moveto otherturtle</code> | move to another turtle. |
| <code>moveto $('#spot')</code> | move to the element with id spot. |
| <code>moveto document</code> | move to the center of the document. |
| <code>moveto window</code> | move to the center of the visible window. |

### Limiting Motion

When passing a single location object to <code>moveto</code>, it supports
an optional second argument limiting the distance of the motion.  When the
second argument is given, the turtle will move towards the location, but
no farther than the limiting distance in pixels.

The following program will move the turtle towards the last mouse event
twice per second, but will move no more than 10 pixels each time.

<pre class="examp">
pen green
tick 2, ->
  moveto lastmouse, <span data-dfn="limiting distance">10</span>
</pre>

<script type="demo" width=299 height=249>
setup ->
  tick null
demo ->
  pen green
  tick 2, ->
    moveto lastmouse, 10
</script>

In all these uses, <code>moveto</code> moves the turtle without changing
its direction.
