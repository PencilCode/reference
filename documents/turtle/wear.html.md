---
title: wear
description: change the look of a turtle
layout: reference
---

**wear** changes the look of a turtle.

**wear** can change the [color](colors.html) of a turtle's shell or replace its shell with an image. 

### Change Turtle Color
You can create a turtle with a default color and then change the color using the "wear" function. 

<pre class="jumbo">
  t = new Turtle <span data-dfnup="optional color">pink</span>
  s = new Turtle purple
  t.fd 30
  t.pause 2
  t.<span data-dfn="command after a dot">wear blue
</pre>

<script type="demo">
sally = null
setup ->
  remove sally
demo ->
  t = new Turtle pink
  s = new Turtle purple
  t.fd 30
  t.pause 2
  t.wear blue
</script>

### Change Turtle Image
You can replace the turtle's shell with an image. Notice that the URL for the image must be in quotes. 

<pre class="examp">
  t = new Turtle <span data-dfnup="optional color">pink</span>
  s = new Turtle purple
  t.fd 30
  t.pause 2
  t.<span data-dfn="command after a dot">wear "http://gym.pencilcode.net/images/dog.png"
</pre>

<script type="figure" height=300>
t = s = null
setup ->
  remove t, s
demo ->
  s = new Turtle pink
  t = new Turtle purple
  #t.fd 30
  t.pause 2
  wear "http://gym.pencilcode.net/images/dog.png"
</script>

<!-- you can also use fade, mirror, etc. to change the look of the turtle -->
