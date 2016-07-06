---
title: Angles
description: the direction an object is facing
layout: reference
---

An angle can be used to determine how far an object rotates when using certain commands. One example of such a command is [lt](lt.html). 

<pre class="jumbo">
lt <span data-dfn="angle">90</span>
</pre>

Angles are also used to determine the direction of one object from another, such as in the [direction](direction.html) command. 

<pre class="jumbo">
p.turnto <span data-dfn="returns an angle">direction(turtle)</span>
</pre>

The direction from one object to another object is an angle. This angle is a value between -180 and 180 and like coordinates, the angle is relative to the environment, not the object itself. This means that, no matter which direction the object is currently facing, the direction will remain the same between the same locations. 

In the example below, the direction from the turtle to the mouse cursor is displayed at the top, and the relative angles from the turtle (in this case, the coordinates used in the [rt](rt.html) command) are displayed in the wheel around the turtle. When the mouse button is clicked, the turtle will turn towards the cursor's location. 

<script type="demo" height=300 width=300>
speed Infinity
drawDiagram = ->
  fd 100
  label 0, labelSide: 'centered'
  bk 15
  pen black
  bk 5
  pen blue, 3
  bk 80
  pen null
  for i in [15..165] by 15
    rt i
    fd 100
    label i, labelSide: 'centered'
    bk 15
    pen black
    bk 5
    pen lightgray
    bk 80
    pen null
    lt 2*i
    fd 100
    label -i, labelSide: 'centered'
    bk 15
    pen black
    bk 5
    pen lightgray
    bk 80
    pen null
    rt i
  rt 180
  fd 100
  label 180, labelSide: 'centered'
  bk 15
  pen black
  bk 5
  pen gray
  bk 80
  pen null
  fd 80
  rt 90
  pen black, 2
  rt 360, 80
  pen null
  rt 90
  fd 80
  dot white, 30

mousedown ->
  turnto lastmousemove
  cg()
  drawDiagram()

drawDiagram()

p = write ""
d = new Turtle
  opacity: 0
tick 200, ->
  c = new Sprite
    opacity: 0
  d.drawon c
  d.pen red
  d.turnto lastmousemove
  d.fd 80
  d.home()
  p.html "direction to mouse: " + direction(lastmousemove)
  await done defer()
  c.remove()
</script>
