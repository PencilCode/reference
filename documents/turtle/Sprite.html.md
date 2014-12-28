---
title: new Sprite
description: creates a new sprite
layout: reference
---

**new Sprite** creates a new sprite.

**new Sprite** can create a blank object that you can draw on. By default, a new sprite is an invisible 256 pixel square but you can change its [color](colors.html) and size.  

Name the sprite by setting a variable.  Once the sprite has a variable
name like `penny`, you can draw on it using [drawon](drawon.html).

<pre class="jumbo">
penny = new Sprite <span data-dfnup="optional color">orange</span>
color: <span data-dfn="color">gray</span>
height: <span data-dfn="height">128</span>
width: <span data-dfn="width">128</span>
</pre>

<script type="demo">
penny = null
setup ->
  remove penny
demo ->
  penny = new Sprite orange
  penny.speed 1
  penny.fd 50
  penny.pause 1
  sync penny, turtle
  penny.label 'sally &rarr;', 'left'
  penny.label 'original turtle', 'right'
</script>

### Multiple Sprites

Any number of sprites can be created.  Be sure to use a different
name for each sprites.

Sprites receive their commands to move instantly, and then
after receving commands, they all begin moving at the same time.
In the next example, `r` is given its commands before
`b`, but they both start moving at the same time.

<pre class="examp">
<span data-dfnright="for r">r = new Sprite red
r.rt 90
r.lt 180, 50</span>
<span data-dfnright="for b">b = new Sprite blue
b.lt 90
b.rt 180, 50</span>
</pre>

<script type="demo">
r = b = null
setup ->
  ht()
  remove r, b
  r = new Sprite red
  r.jump 0, -50
  b = new Sprite blue
  b.jump 0, -50
demo ->
  r.pause 1
  b.pause 1
  r.rt 90
  r.lt 180, 50
  b.lt 90
  b.rt 180, 50
</script>

### Changing the Sprite

Use optional arguments to change the sprite’s default color and size.

<pre class="examp">
car = new Turtle
car.fd 100
car.wear '/img/icon-car', 50
</pre>

<script type="demo">
car = null
setup ->
  remove car
demo ->
  car = new Turtle
  car.speed 1
  car.fd 50
  car.wear '/img/icon-car', 50
</script>


See [Sprite](sprite.html) to make a blank "turtle" that you can draw yourself using [drawon](drawon.html).
