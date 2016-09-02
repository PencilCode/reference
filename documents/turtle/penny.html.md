---
title: new Template
description: creates a new Template
layout: reference
---

**function** does basically xzy.

**function** can do certain things that are covered in demo. 

<!-- links: [color](colors.html) -->

Get started by, e.g. naming an element.  Give it a name like
like `sally`.

<!-- simple example syntax, alt dfnright -->
<!-- span data to annotate -->
<pre class="jumbo">
sally = new Turtle <span data-dfnup="optional color">orange</span>
sally.<span data-dfn="command after a dot">fd 50</span>
</pre>

<!-- demo the example -->
<!-- annotate the demo elements with label -->
<script type="demo">
sally = null
setup ->
  remove sally
demo ->
  sally = new Turtle orange
  sally.speed 1
  sally.fd 50
  sally.pause 1
  sync sally, turtle
  sally.label 'sally &rarr;', 'left'
  turtle.label 'original turtle', 'right'
</script>

<!-- Advanced functionality -->
### Multiple Turtles

Any number of turtles can be created.  Be sure to use a different
name for each turtle.

Turtles receive their commands to move instantly, and then
after receving commands, they all begin moving at the same time.
In the next example, `r` is given its commands before
`b`, but they both start moving at the same time.

<pre class="examp">
<span data-dfnright="for r">r = new Turtle red
r.rt 90
r.lt 180, 50</span>
<span data-dfnright="for b">b = new Turtle blue
b.lt 90
b.rt 180, 50</span>
</pre>

<script type="demo">
r = b = null
setup ->
  ht()
  remove r, b
  r = new Turtle red
  r.jump 0, -50
  b = new Turtle blue
  b.jump 0, -50
demo ->
  r.pause 1
  b.pause 1
  r.rt 90
  r.lt 180, 50
  b.lt 90
  b.rt 180, 50
</script>

### Changing the Turtle

Use [`wear`](wear.html) to change the turtle’s shell to a different color or replace its shell with an image.

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


See [`Sprite`](Sprite.html) to make a blank "turtle" that you can draw yourself using [`drawon`](drawon.html).
