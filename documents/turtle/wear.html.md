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
demo ->
  ht()
  t = new Turtle pink
  pause 1
  plan ->
    s = new Turtle purple
    pause 1
    plan ->
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

<script type="demo" height=200>
demo ->
  ht()
  s = new Turtle pink
  pause 1
  plan ->
    t = new Turtle purple
    t.pause 1
    t.fd 30
    t.pause 2
    t.wear "https://objects.artspan.com/member/hbaiz/125/2224379.jpg"
</script>

<!-- you can also use fade, mirror, twist, etc. to change the look of the turtle -->
