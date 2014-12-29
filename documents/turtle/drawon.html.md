---
title: drawnon
description: draw on a sprite
layout: reference
---

**drawon** used to draw on a turtle or sprite to create new shapes.

**drawon** lets you create new shapes by using creating a [sprite](sprite.html) to serve as a new canvas and drawing on it with a turtle to create your own shape, e.g. a new creature. 

First, name a sprite and a turtle by setting  variables. By default, a new sprite is an invisible 256 pixel square but you can change its [color](colors.html) and size. In this example, we are going to draw a dot on the sprite, using the turtle.   

<!--- what else -->
<pre class="jumbo">
magic orange = new Sprite
<span data-dfnup="color">
color: gray</span>
t = new Turtle 
<span data-dfn="draw">t.drawon s</span>
t.dot orange, 100
</pre>

<script type="demo">
penny = null
setup ->
  remove penny
demo ->
  magic orange = new Sprite
  color: gray
  t = new Turtle 
  t.drawon s
  t.dot orange, 100
</script>

### Moving New Shapes
We use [pen](pen.html), [dot](dot.html) and [sync](sync.html) to create and move  shapes in our next example. Sync makes the shapes move in sequence instead of at the same time. 

<!--- Check speedinfinity and whether sync correct -->
<!--- What does null do (set to default?)  -->
<!--- Add annotations  -->
<pre class="examp">
s = new Sprite
  color: gray
t = new Turtle
t.drawon s
t.dot red, 100
t.pen blue, 10
t.fd 100
t.pen null
t.ht()
sync s, t
s.lt 45
s.fd 100
</pre>
<!--- explain pause -->
<script type="demo">
t = s = b = g = null
setup ->
  ht()
  remove s, t, g, b
demo ->
  s = new Sprite
    color: gray
  t = new Turtle
  t.drawon s
  t.dot red, 50
  t.pen blue, 10
  t.fd 50
  t.pen null
  t.ht()
  sync s, t
  s.lt 90
  s.fd 100
  b = new Sprite
    color: pink
  g = new Turtle
  g.drawon b
  g.dot orange, 50
  g.pen black, 10
  g.fd 50
  g.pen null
  g.ht()
  sync b, g
  b.rt 90
  b.fd 100
</script>

See [Sprite](sprite.html) to make a blank "turtle" that you can use to create an ant using [drawon](drawon.html).




