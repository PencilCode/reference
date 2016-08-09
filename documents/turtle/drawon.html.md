---
title: drawon
description: draw on a sprite
layout: reference
---

`drawon` is used to draw on a turtle or sprite to create new shapes.

`drawon` lets you create new shapes by using creating a [sprite](sprite.html) to serve as a new canvas and drawing on it with a turtle to create your own shape, e.g. a new creature. 

First, name a sprite and a turtle by setting  variables. By default, a new sprite is an invisible 256 pixel square but you can change its [color](colors.html) and size. In this example, we are going to draw a dot on a sprite using the turtle.   

<!--- what else -->
<pre class="jumbo">
s = new Sprite
<span data-dfn="color">
color: gray</span>

t = new Turtle
<span data-dfn="draw">
t.drawon s</span>

t.dot orange, 100
</pre>

<script type="demo">
s = null
t = null
setup ->
  remove s, t
demo ->
  s = new Sprite
  color: gray
  t = new Turtle 
  t.drawon s
  t.dot orange, 100
</script>

### Moving New Shapes
We use [`pen`](pen.html), [`dot`](dot.html) and [`sync`](sync.html) to create and move  shapes in our next example. `sync` makes the shapes move in sequence instead of at the same time. 

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
<!--- which ones should be null? -->
<script type="demo">
t = s = b = g = null
setup ->
  ht()
  remove s, t, g, b
demo ->
  s = new Sprite
  color: gray
  height: 50
  width: 30
  t = new Turtle
  t.drawon s
  t.dot red, 25
  t.pen blue, 10
  t.fd 20
  t.pen null
  t.ht()
  sync s, t
  s.lt 90
  s.fd 40
  b = new Sprite
  color: pink
  height: 50
  width: 30
  g = new Turtle
  g.drawon b
  g.dot orange, 25
  g.pen black, 10
  g.fd 20
  g.pen null
  g.ht()
  sync b, g
  b.pause 1
  g.pause 1
  b.rt 90
  b.fd 40
</script>

See [Sprite](sprite.html) to make a blank, turtle-like object on which you can draw or use to display graphics. 

<!-- from Google Groups, use drawon instead of moveto (jumpto wrong)
speed Infinity
a = new Sprite
b = new Turtle
a.scale 1.5
b.jumpto -300, 173
b.pen red
a.wear "http://www.crossriver.com/images/earth-map-1000x500.gif"
b.pause 3
speed .3 
b.jumpto -60,35
-->


