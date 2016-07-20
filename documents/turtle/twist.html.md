---
title: twist
description: changes the rotation of an image
layout: reference
---

`twist` allows the appearance of an object to be rotated without rotating the object. This means that, if an image is turned the wrong way, you don't have to edit the image itself; you can simply rotate it in the code! 

`twist` is very useful for [animation](animation.html). 

### Syntax

<pre class="jumbo">
anobject.twist <span data-dfnup="angle">40</span>
</pre>

  * `anobject` is the name of the object being modified
  * `twist` acts like [`rt`](rt.html) and rotates the graphic clockwise the given number of degrees. To rotate it counterclockwise, simply use a negative angle. 

In the above example, the graphic would be rotated 40 degrees clockwise. 

Twist rotates the graphic instantly and has no visual animation. 

### Example

Say you wanted to use the image below in your code. 

<img src="https://i.imgur.com/nUx9V2u.png" height=100 style="
  display: block;
  margin: auto;">

First you need to import the image into your code using [`wear`](wear.html). 

<pre class="jumbo">
e = new Sprite
e.wear "<span data-dfn="image url">https://i.imgur.com/nUx9V2u.png</span>"
</pre>

<script type="figure" height=100 width=300>
speed Infinity
ht()
e = new Sprite
e.wear "https://i.imgur.com/nUx9V2u.png"
e.scale .25
</script>

Although this may look right, the sprite is actually still facing upwards. If you use [`fd`](fd.html) to move the ship forward, it looks like the ship moves up, not forward. Of course, we want it to look like it moves forward. 

We can do this by adding `e.twist -90` after `e.scale .25`. 

Below is an example of before and after using `twist`. 

<script type="figure" width=400 height=400>
speed Infinity
ht()

button 'Without twist', ->
  e = new Sprite
  e.wear "https://i.imgur.com/nUx9V2u.png"
  e.scale .25
  speed 1
  e.fd 100
  await done defer()
  e.remove()

button 'With twist', ->
  e = new Sprite
  e.wear "https://i.imgur.com/nUx9V2u.png"
  e.scale .25
  e.twist -90
  speed 1
  e.fd 100
  await done defer()
  e.remove()
</script>

Finally, use `rt 90` to rotate the ship horizontally. 
