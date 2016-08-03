---
title: mixing queue- and frame-based animation
description: the ultimate form of animation
layout: reference
---

[Queue-based animation](qanimation.html) and [frame-based animation](fanimation.html) may seem like completely different types of programming, but they are both based off the same concept. The only difference is that in queue-based animation you're seeing the results long after the code is completed, whereas in frame-based animation the program is run as a series of frames which are displayed immediately and instantaniously upon completion. 

While it is sometimes difficult to do, mixing the two types of animation can make more complex code, along with a more seamless visual, possible. 

The following example uses queues to make the turtles move, but each movement is queued each frame by the `while` loop.

<script type="figure" width=500 height=500>
speed 50
ht()
randpos = ->
  [random([-100..100]), random([-100..100])]
remakea = ->
  col = random color
  a.wear col
  a.pen col
  a.turnto randpos()
remakeb = ->
  col = random color
  b.wear col
  b.pen col
  b.turnto randpos()
remakec = ->
  col = random color
  c.wear col
  c.pen col
  c.turnto randpos()
a = new Turtle
remakea()
b = new Turtle
remakeb()
c = new Turtle
remakec()
while true
  a.fd 200
  remakea()
  b.fd 200
  remakeb()
  c.fd 200
  remakec()
  await done defer()
</script>

*For a more detailed explanation of this script, see its [info](qfanimationexample1.html) page.*
