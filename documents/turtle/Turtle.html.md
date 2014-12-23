---
title: new Turtle
description: creates a new turtle
layout: reference
---

**new Turtle** creates a new turtle.

**new Turtle** can create a new turtle with any [color](colors.html) shell. 

Name the turtle by setting a variable.  Once the turtle has a variable
name like `sally`, the turtle can be moved by coding a command after
a period:

<pre class="jumbo">
sally = new Turtle <span data-dfnup="optional color">orange</span>
sally<span data-dfn="command after a dot">.fd 100</span>
</pre>

<script type="demo">
sally = null
setup ->
  remove sally
demo ->
  sally = new Turtle orange
  pause 1
  sally.label 'sally', 'left'
  turtle.label 'original turtle', 'right'
</script>

### Multiple Turtles

Any number of turtles can be created.  Be sure to use a different
name for each turtle.

Turtles receive their commands to move instantly, and then
after receving commands, they all begin moving at the same time.
In the next example, `r` is given its commands before
`b`, but they both start moving at the same time.

<pre>
<span data-dfnright="r commands">r = new Turtle red
r.rt 90
r.lt 180, 100</span>
<span data-dfnright="b commands">b = new Turtle blue
b.lt 90
b.rt 180, 100</span>
</pre>

### Changing the Turtle

Use [wear](wear.html) to change the turtle’s shell to a different color or replace its shell with an image.

<pre class="jumbo">
car = new Turtle
car.fd 100
car.wear '/img/icon-car', 50
</pre>

See [Sprite](sprite.html) to make a blank "turtle" that you can draw yourself using [drawon](drawon.html).
