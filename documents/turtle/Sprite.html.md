---
title: new Sprite
description: creates a new sprite
layout: reference
---

**new Sprite** creates a new sprite.

**new Sprite** can create a blank canvas that you can draw on and create your own shapes. By default, a new sprite is an invisible 256 pixel square, but you can change its [color](colors.html) and size.  

First, name the sprite by setting a variable.  Once the sprite has a name like `penny`, you can draw on it using [drawon](drawon.html).

<!--- drawon explanation -->

### Changing the Sprite

Use optional arguments to change the sprite’s default color and size.

<pre class="jumbo">
penny = new Sprite
<span data-dfnright="size and color"
>  color: gray
  height: 50
  width: 75
</span>
</pre>

<script type="demo">
penny = null
setup ->
  remove penny
demo ->
  penny = new Sprite 
    color: gray
    height: 50
    width: 75
</script>

### Animating Multiple Sprites

Any number of sprites can be created.  Be sure to use a different name for each sprite.

Sprites receive their commands to move instantly, and then
after receving commands, they all begin moving at the same time.
<!--- You can use sync so that they move at different times -->
In the next example, we create `paul`, an ant and `penny`, a breadcrumb. 

<!--- http://gym.pencilcode.net/draw/ant.html - make the ant eat the breadcrumb -->

<pre class="examp">
<span data-dfnright="for paul">r = new Sprite red
paul.rt 90
paul.lt 180, 50</span>
<span data-dfnright="for penny">b = new Sprite gray
penny.lt 90
penny.rt 180, 50</span>
</pre>

<script type="demo">
paul = penny = null
setup ->
  ht()
  remove paul, penny
  paul = new Sprite red
  paul.jump 0, -50
  penny = new Sprite gray
  peny.jump 0, -50
demo ->
  r.pause 1
  b.pause 1
  r.rt 90
  r.lt 180, 50
  b.lt 90
  b.rt 180, 50
</script>





