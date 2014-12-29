---
title: sync
description: synchronizes turtles
layout: reference
---

**sync** is used to synchronize turtles or sprites. 

**sync** If you want to fix up sprite timing by synchronizing with other sprites, you can list the sprites you want to sync with using the "sync" command

The "sync" command will make any listed sprites pause until all of them reach that same point in the animation, before proceeding to any animation commands after the sync command. 

<!--- annotations -->
<pre class="jumbo">
  r = new Turtle red
  g = turtle green
  p = new Turtle purple
  r.bk 100
  g.fd 100
  g.rt 90
  g.fd 100
  sync r, g, p
  r.fd 100
  g.fd 100
  p.fd 100
</pre>

<!--- which ones shold be null? -->
<!--- demo - turtle and hare race -->
<script type="demo">
t = null
setup ->
  remove r, g, p
demo ->
  r = new Turtle red
  g = turtle green
  p = new Turtle purple
  r.bk 100
  g.fd 100
  g.rt 90
  g.fd 100
  sync r, g, p
  r.fd 100
  g.fd 100
  p.fd 100
</script>

You can also control an element's speed and timing by using [speed](speed.html) to set the number of moves per second and [pause](pause.html) to pause a turtle while other turtles perform actions. 
