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

###Interior vs Exterior Angles

It is important to note that the angles used by commands (such as [lt](lt.html) and [rt](rt.html)) are *exterior* angles. The only case in which the interion and exterior angles are the same is when drawing a 90 degree angle. 

To draw an (interior) angle of a certain degree, you need to find the exterior angle to use in the code. The exterior angle is equal to 180 degrees minus the desired interior angle. 

For example, when drawing an equillateral triangle (a triangle with all angles equal to 60 degrees and all sides equal in length), if you use 60 degree angles, it will not turn out correctly. 

<script type="demo" height=180 width=300>
speed 10
angle1 = 60
angle2 = 180 - angle1

drawAngle = (angle) ->
  plan ->
    pen mediumpurple, 1
    fd 50
    bk 25
    rt 90
    rt angle, 25
    lt 180
    lt angle/2, 25
    rt 90
    pen null
    fd 20
    label angle + "°", labelSide: 'centered'
    bk 45
    lt angle/2
    pen red

slide -75, -75
pen red
fd 100
drawAngle(angle1)
rt angle1
drawAngle(angle2)
fd 100
pen null
home()

slide 25, -75
pen red
fd 100
drawAngle(angle2)
rt angle2
drawAngle(angle1)
fd 100
</script>

Instead of using:

<pre class="jumbo">
rt 60
</pre>

like in the example on the left, we need to use: 

<pre class="jumbo">
rt <span data-dfn="180 - 60">120</span>
</pre>
