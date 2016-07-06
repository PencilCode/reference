---
title: lt
description: turns the turtle left
layout: reference
section: basic
refOrder: 6
---

<b>lt</b> pivots the turtle clockwise (Left Turn).

The turn is measured in degrees.

<code class="jumbo">lt&nbsp;<span data-dfn="degrees">90</span></code>

<script type="demo">
demo ->
  pause 1
  lt 90
  pause 1
  plan ->
    p = new Pencil
    p.pen black, .7
    p.jumpto -70, 0
    p.moveto 0, 0
    p.moveto 0, 70
    p.jumpto -30, 0
    p.turnto 0
    p.rt 90, 30
    p.pen null
    p.jumpto -20, 20
    p.turnto -45
    p.label '90&deg; left', 'top left'
    remove p
</script>

Notice that the turtle will not actually move in the new direction
until you tell it to move forward with `fd`.

<h3>Drawing Angles</h3>

When using a pen, putting `lt` between two `fd` moves can draw an angle.

<pre class="jumbo">
pen lime
fd 100
lt 120
fd 100
</pre>

<script type="demo" height=199>
setup ->
  moveto 25, -75
demo ->
  pen lime
  fd 100
  pause 1
  lt 120
  pause 1
  fd 100
  pause 1
  plan ->
    p = new Pencil
    p.pen black, .7
    p.jumpto 25, 25
    p.moveto 25, 95
    p.jumpto 25, 55
    p.turnto -90
    p.lt 120, 30
    p.pen null
    p.jumpto 0, 35
    p.label '120&deg; left', 'top left'
    remove p
</script>

Notice that the angle used by `lt` is the <em>exterior</em> angle.
The interior angle added to the exterior angle will be 180.
For example, the 60 degree interior angle drawn by the program
above corresponds to the 120 degree exterior angle swept out by
the turtle.

<h3>Turning an Upside-Down Turtle</h3>

<b>lt</b> turns left from the turtle&apos;s point of view, so
if the turtle is facing downward, when it turns left from its
point of view, it will end up facing right from your point of
view.  The demo below can be clicked a few times to show different
starting directions.

<pre class="jumbo">
turnto random 360
pen orange
fd 100
lt 100
fd 100
</pre>


<script type="demo" height=299 width=399>
angle = 100
demo ->
  d = random 360
  if d < 90 or d > 270 # if upright, retry
    d = random 360
  speed Infinity
  pen orange
  speed 1
  turnto d
  fd 100
  lt angle
  fd 100
  pause 1
  plan ->
    p = new Pencil
    p.turnto d
    p.fd 100
    p.pen black, .7
    p.fd 70
    p.jump 0, -40
    p.lt 90
    p.lt angle, 30
    p.pen null
    p.lt -angle/2, 30
    octant = switch
      when d < 22.5 or d > 360 - 22.5
        "top left"
      when d < 45 + 22.5
        "top"
      when d < 2 * 45 + 22.5
        "top right"
      when d < 3 * 45 + 22.5
        "right"
      when d < 4 * 45 + 22.5
        "bottom right"
      when d < 5 * 45 + 22.5
        "bottom"
      when d < 6 * 45 + 22.5
        "bottom left"
      when d < 7 * 45 + 22.5
        "left"
    p.label angle + '&deg; left', octant
    remove p
</script>


<h3>Drawing Curves</h3>

`lt` can also be used to draw curves by using a second argument.
Read the reference page on <a href="curves.html">curves</a>.
