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

<iframe src="http://david.pencilcode.net/home/explainer/curves" width="600" height="500"></iframe>

An arc can even have an angle of 360 degrees, creating a circle. 

<pre class="jumbo">
rt 360, 50
</pre>

<script type="demo" height=120 width=120>
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
