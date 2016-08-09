---
title: clip
description: fitting to the edges
layout: reference
---

`clip` will remove all parts of an object outside the <b class="edit">something</b> boundary. 

After drawing a custom sprite, `clip` can be used to make the sprite the shape of the drawing. 

However, it does not clip concave areas. 

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

<script type="demo">
setup ->
  
demo ->
  speed 10
  c = new Sprite
  drawon c
  pen red
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
