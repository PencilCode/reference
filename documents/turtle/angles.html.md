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

The direction from one object to another object is an angle. This angle is a value between -180 and 180 and unlike coordinates, which are always the same, the angle is relative to the direction the object is currently facing. 

<script type="demo" height=99>
p = write ""
tick 20, ->
  p.html direction(lastmousemove)
</script>
