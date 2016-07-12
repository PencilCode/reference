---
title: Drawing Arcs
description: draw arcs with lt and rt
layout: reference
---

Arcs can be drawn by adding a second arguement to the familiar [lt](lt.html) and [rt](rt.html) commands. 

###Syntax

<pre class="jumbo">
lt <span data-dfn="angle">135</span>, <span data-dfn="radius">60</span>
</pre>

<iframe src="http://david.pencilcode.net/home/explainer/curves" width="600" height="500" style="border:none"></iframe>

An arc can even have an angle of 360 degrees, creating a circle. 

<pre class="jumbo">
rt 360, 50
</pre>

<script type="demo" height=150>
demo ->
  fd 50
  rt 90
  pen red
  rt 360, 50
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
  animate
    opacity: .3
</script>

###Interior vs Exterior Angles

It is important to note that the angles used by commands (such as [lt](lt.html) and [rt](rt.html)) are *exterior* angles. The only case in which the interion and exterior angles are the same is when drawing a 90 degree angle. 

To draw an (interior) angle of a certain degree, you need to find the exterior angle to use in the code. The exterior angle is equal to 180 degrees minus the desired interior angle. 

For example, when drawing an equillateral triangle (a triangle with all angles equal to 60 degrees and all side equal in length), if you use 60 degree angles, it will not turn out correctly. 

<script type="demo" height=180 width=180>
demo ->
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
  
  slide 75, -75
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

like in the first example, we need to use: 

<pre class="jumbo">
rt <span data-dfn="180 - 60">120</span>
</pre>

