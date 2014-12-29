---
title: wear
description: change the look of a turtle
layout: reference
---

**wear** changes the look of a turtle.

**wear** can change the [color](colors.html) of a turtle's shell or replace its shell with an image. 

### Change Turtle Color

<pre class="jumbo">
  t = new Turtle <span data-dfnup="optional color">pink</span>
  s = new Turtle purple
  t.fd 30
  t.pause 2
  t<span data-dfn="command after a dot">wear blue
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

<pre class="examp">
  t = new Turtle <span data-dfnup="optional color">pink</span>
  s = new Turtle purple
  t.fd 30
  t.pause 2
  t<span data-dfn="command after a dot">wear "http://gym.pencilcode.net/images/dog.png"
</pre>

<script type="demo">
t = s = null
setup ->
  remove t, s
demo ->
  s = new Turtle pink
  t = new Turtle purple
  t.fd 30
  t.pause 2
  t.wear "http://gym.pencilcode.net/images/dog.png"
</script>

