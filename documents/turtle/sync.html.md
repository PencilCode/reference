---
title: sync
description: synchronizes turtles
layout: reference
---

`sync` is used to synchronize turtles or sprites. 

If you want to correct sprite timing by synchronizing with other sprites, you would use `sync`. 

`sync` will make any listed sprites pause until all of them reach that same point in the animation before proceeding to any animation commands after it. 

`sync` is one of the commands that manipulates [animation queues](animationqueues.html). 

<!--- annotations -->
<!--- turtle and hare race demo -->
<pre class="jumbo">
r = new Turtle red
g = new Turtle green
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
<script type="demo" height=240 width=240>
setup ->

demo ->
  r = new Turtle red
  g = new Turtle green
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

You can also control an element's speed and timing by using [`speed`](speed.html) to set the number of moves per second and [`pause`](pause.html) to pause a turtle while other turtles perform actions. 
