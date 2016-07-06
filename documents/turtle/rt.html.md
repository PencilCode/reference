---
title: rt
description: turns the turtle right
layout: reference
section: basic
refOrder: 5
---

<b>rt</b> pivots the turtle clockwise (Right Turn).

The turn is measured in degrees.

<code class="jumbo">rt&nbsp;<span data-dfn="degrees">90</span></code>

<script type="demo">
p = new Pencil
demo ->
  pause 1
  rt 90
  pause 1
  plan ->
    p.home()
    p.pen black, .7
    p.jumpto 70, 0
    p.moveto 0, 0
    p.moveto 0, 70
    p.jumpto 30, 0
    p.turnto 0
    p.lt 90, 30
    p.pen null
    p.jumpto 20, 20
    p.turnto 45
    p.label '90&deg; right', 'top right'
</script>

Notice that the turtle will not actually move in the new direction
until you tell it to move forward with `fd`.

<h3>Drawing Angles</h3>

When using a pen, putting `rt` between two `fd` moves can draw an angle.

<pre class="jumbo">
pen purple
fd 100
rt 120
fd 100
</pre>

<script type="demo" height=199>
setup ->
  moveto -25, -75
demo ->
  pen purple
  fd 100
  pause 1
  rt 120
  pause 1
  fd 100
  pause 1
  plan ->
    p = new Pencil
    p.pen black, .7
    p.jumpto -25, 25
    p.moveto -25, 95
    p.jumpto -25, 55
    p.turnto 90
    p.rt 120, 30
    p.pen null
    p.jumpto 0, 35
    p.label '120&deg; right', 'top right'
    remove p
</script>

Notice that the angle used by `rt` is the <em>exterior</em> angle.
The interior angle added to the exterior angle will be 180.
For example, the 60 degree interior angle drawn by the program
above corresponds to the 120 degree exterior angle swept out by
the turtle.

<h3>Turning an Upside-Down Turtle</h3>

<b>rt</b> turns right from the turtle&apos;s point of view, so
if the turtle is facing downward, when it turns right from its
point of view, it will end up facing left from your point of
view.  The demo below can be clicked a few times to show
different starting directions.

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
  rt angle
  fd 100
  pause 1
  plan ->
    p = new Pencil
    p.turnto d
    p.fd 100
    p.pen black, .7
    p.fd 70
    p.jump 0, -40
    p.rt 90
    p.rt angle, 30
    p.pen null
    p.rt -angle/2, 30
    octant = switch
      when d < 22.5 or d > 360 - 22.5
        "top right"
      when d < 45 + 22.5
        "right"
      when d < 2 * 45 + 22.5
        "bottom right"
      when d < 3 * 45 + 22.5
        "bottom"
      when d < 4 * 45 + 22.5
        "bottom left"
      when d < 5 * 45 + 22.5
        "left"
      when d < 6 * 45 + 22.5
        "top left"
      when d < 7 * 45 + 22.5
        "top"
    p.label angle+'&deg; right', octant
    remove p
</script>

<h3>Drawing Curves</h3>

rt can also be used to draw curves by using a second argument.
Read the reference page on <a href="curves.html">curves</a>.
