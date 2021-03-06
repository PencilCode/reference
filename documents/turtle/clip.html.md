---
title: clip
description: fitting to the edges
layout: reference
---

`clip` will remove all parts of an object outside the [convex hull](https://en.wikipedia.org/wiki/Convex_hull). 

Essentially, the convex hull looks like the edge of a rubber band wrapped around an object. 

In the image below, the red border represents the convex hull. Note that it does not reach into the indentation in the triangle. 

<img src="http://i.imgur.com/Hpmkgin.png" width=500>

After drawing a custom sprite using [`drawon`](drawon.html), `clip` can be used to make the sprite the shape of the drawing. 

<pre class="examp">
c = new Sprite
pen red
drawon c
fd 100
rt 90
fd 100
turnto 0, 0
moveto 0, 0
home()
pen null
plan ->
  c.clip()
</pre>

<script type="demo" width=250 height=250>
demo ->
  speed 2
  c = new Sprite
  pen red
  drawon c
  fd 100
  rt 90
  fd 100
  turnto 0, 0
  moveto 0, 0
  home()
  pen null
  plan ->
    c.clip()
</script>

However, it does not clip concave areas. This is because they are within the convex hull. 

<pre class="examp">
c = new Sprite
pen red
drawon c
fd 100
rt 90
fd 50
rt 45
fd 25
lt 90
fd 25
rt 45
fd 20
moveto 0, 0
home()
pen null
plan ->
  c.clip()
</pre>

<script type="demo" width=250 height=250>
demo ->
  speed 2
  c = new Sprite
  pen red
  drawon c
  fd 100
  rt 90
  fd 50
  rt 45
  fd 25
  lt 90
  fd 25
  rt 45
  fd 20
  moveto 0, 0
  home()
  pen null
  plan ->
    c.clip()
</script>
