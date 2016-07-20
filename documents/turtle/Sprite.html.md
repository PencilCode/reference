---
title: new Sprite
description: creates a new sprite
layout: reference
---

`new Sprite` creates a new sprite.

`new Sprite` can create a blank canvas that you can draw on and create your own shapes. By default, a new sprite is an invisible 256 pixel square, but you can change its [color](colors.html) and size. 

First, name the sprite by setting a variable. To do this, type: 

<pre class="jumbo">
<span data-dfnup="any string">penny</span> = new Sprite
</pre>

This will allow you to use commands on the sprite such as [fd](fd.html), [home](home.html), etc.. 

Once the sprite has a name like `penny`, you can draw on it using [drawon](drawon.html).

<!--- drawon explanation -->

### Changing the Sprite

When creating the sprite, you can use optional arguments to change various properties, such as default color, size and opacity.

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

Sprites can be used as new actors when creating [animations](animation.html). 
