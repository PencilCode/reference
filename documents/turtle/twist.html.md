---
title: twist
description: changes the rotation of an image
layout: reference
---

`twist` allows the appearance of an object to be rotated without rotating the object. This means that, if an image is turned the wrong way, you don't have to edit the image itself; you can simply rotate it in the code! 

For example, say you wanted to use the image below in your code. 

<img src="https://i.imgur.com/PhKFPpt.png" height=300 style="
  display: block;
  margin: auto;">

You'd probably want it to be horizontal, not vertical. First you need to import the image into your code using [`wear`](wear.html). 

<pre class="jumbo" style="display: inline-block; width: 80%">
e = new Sprite
e.wear "<span data-dfn="image url">https://i.imgur.com/PhKFPpt.png</span>"
</pre>

<script type="figure" height=300 width=100 style="display: inline-block;">
speed Infinity
ht()
e = new Sprite
e.wear "https://i.imgur.com/PhKFPpt.png"
e.scale .25
</script>

Now, if you use [`fd`](fd.html) to move the ship forward, it looks like the ship moves up, not forward. Of course, we want it to look like it moves forward. 
