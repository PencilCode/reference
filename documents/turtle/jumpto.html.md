---
title: jumpto
description: moves the turtle to a new location without drawing
layout: reference
section: drawing
refOrder: 0
---

The turtle starts in the middle of the window, at (x, y) coordinates
(0, 0).

<code>jumpto x, y</code> jumps to an absolute location in
traditional Cartesian coordinates.  In this coordinate system,
Each unit is one pixel, and each graph paper grid square is 25 units.
The mathematical coordinate axes are used, placing (0, 0)
at the middle with x increasing to the right (horizontally) and y increasing upward (vertically).

A vector represented as an array of two numbers can be used.
<code>jumpto [x, y]</code> is treated the same as
<code>jumpto x, y</code>.

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
  jumpto e.x, e.y
</script>

### Drawing while Jumping

<code>jumpto</code> will jump to a location without drawing. You can use the function [moveto](moveto.html) with a pen to draw lines between points. 

<code>jumpto</code> does not affect the
turtle rotation, only its position.

</script>

<pre class="examp">
dot yellow, 20
jumpto 50, 50
dot blue, 20
jumpto -75, -25
dot pink, 20
jumpto 0, -50
dot purple, 20
jumpto -125, 80
dot green, 20
jumpto <span data-dfn="x">-125</span>, <span data-dfn="y">100</span>
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
  p.moveto 250, 0 -->
demo ->
  jumpto 50, 50
  dot green, 20
  plan ->
    jumpto turtle
    cross()
    label 'jumpto 50, 50', 'top'
    jumpto -75, -25
    dot purple, 20
  plan ->
    jumpto turtle
    cross()
    jump 0, -8
    label 'jumpto -75, -25', 'bottom'
    jumpto 0, -50
    dot yellow, 20
  plan ->
    jumpto turtle
    cross()
    label 'jumpto 0, -50', 'right'
    jumpto -125, 100
    dot blue, 20
  plan ->
    jumpto turtle
    cross()
    label 'jumpto -125, 100', 'right'
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
  jumpto e
</script>

<code>jumpto</code> supports native HTML coordinates if they are passed
with the <code>pageX</code> and <code>pageY</code> properties.  Note
that HTML mouse events all have pageX and pageY properties, so
<code>jumpto lastclick</code> will jump to the location of the last
mouse click.

<!-- or better way to demonstrate? -->
Replay the demo to see how <code>jumpto lastclick</code> works. 

<pre class="examp">
jumpto pageX: 50, pageY: 100
dot blue, 20
jumpto pageX: 150, pageY: 200
dot green, 20
jumpto pageX: 250, pageY: 100
dot yellow, 20
jump to lastclick
dot purple, 20
fd 20
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
  jumpto pageX: 50, pageY: 100
  label 'pageX: 50<br>pageY: 100', 'top'
  dot blue, 20
  jumpto pageX: 150, pageY: 200
  label 'pageX: 150, pageY: 200', 'bottom'
  dot green, 20
  jumpto pageX: 250, pageY: 100
  dot yellow, 20
  label 'pageX: 250<br>pageY: 100', 'top'
  plan ->
    if lastclick.pageX and lastclick.pageY
      jumpto lastclick
      label 'lastclick', if lastclick.pageY > 100 then 'bottom' else 'top'
      dot purple, 20
      fd 20
</script>

### Other Locations

<code>jumpto</code> will also jump to any element or jQuery object or
any other object that supports a pagexy() method that returns page
coordinates.  For example <code>jumpto otherturtle</code> will jump
to the location of another turtle.

Here is a summary of some types of locations that
<code>jumpto</code> understands.

| example       | motion                                                       |
|---------------|--------------------------------------------------------------|
| <code>jumpto x, y</code> | jump to (x, y) in traditional mathematical y-up coordinates. |
| <code>jumpto [x, y]</code> | same as <code>jumpto x, y</code> |
| <code>jumpto pageX: px, pageY: py</code> | jump using HTML page coordinates. |
| <code>jumpto lastmouse</code> | jump to the location of the last mouse event.|
| <code>jumpto otherturtle</code> | jump to another turtle. |
| <code>jumpto $('#spot')</code> | jump to the element with id spot. |
| <code>jumpto document</code> | jump to the center of the document. |
| <code>jumpto window</code> | jump to the center of the visible window. |

### Limiting Motion
When passing a single location object to <code>jumpto</code>, it supports
an optional second argument limiting the distance of the motion.  When the
second argument is given, the turtle will jump towards the location, but
no farther than the limiting distance in pixels.

In the following program the turtle will jump towards the last mouse event
twice per second, but will jump a distance of no more than 10 pixels each time.

<!-- add suggestions at end rather -->
This function is useful to emulate gait. 

<!-- tick indicates repetition; add something-->
<pre class="examp">
pen green
tick 2, ->
  jumpto lastmouse, <span data-dfn="limiting distance">10</span>
</pre>

<!-- comment on tick -->
<script type="demo" width=299 height=249>
setup ->
  tick null
demo ->
  dot blue, 20
  tick 2, ->
    jumpto lastmouse, 10
</script>

In all these uses, <code>moveto</code> moves the turtle without changing
its direction.

If you want to draw lines between points, use <code>moveto</code> with a pen.
