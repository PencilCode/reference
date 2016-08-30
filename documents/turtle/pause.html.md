---
title: pause
description: pauses the turtle
layout: reference
---

`pause` is used to pause the turtle for a specified number of seconds. 

`pause` is one way you can slow a turtle down so other [`animations`](animation.html) and actions can catch up. 

<pre class="jumbo">
  pen red
  fd 50
  lt 90
  pen blue
  pause 2
  fd 50
</pre>

<script type="demo">
t = null
setup ->
  remove t
demo ->
  pen red
  fd 50
  lt 90
  fd 50
  lt 90
  fd 50
  lt 90
  pen blue
  pause 2
  fd 50
</script>

You can also control an element's speed and timing by using [`speed`](speed.html) to set the number of moves per second and [`sync`](sync.html) to synchronize an element's timing with other elements. 
