---
title: direction
description: angle to an object
layout: reference
---

`direction` returns the [angle](angle.html) to an object from the starting position (facing straight up). 

<pre class="jumbo">
t.direction(p)
</pre>

However, when given no arguments it returns the current facing direction of an object. 

<pre class="jumbo">
t.direction()
</pre>

This can be used to get the relative facing direction for use in `lt` and `rt`. 

<pre class="jumbo">
rt direction(p)-direction()
</pre>

The following graphic utilizes these concepts to give a visual of the angles used by `direction`. 

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
  p.html "direction to mouse: " + (direction(lastmousemove)-direction())
  await done defer()
  c.remove()
</script>
