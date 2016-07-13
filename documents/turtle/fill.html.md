---
title: fill
description: for making filled shapes
layout: reference
section: drawing
refOrder: 8
---

There is a <code>formatting test</code> in progress!

`fill` can be used to fill a shape after it is drawn

<pre class="jumbo">
pen violet, 10
for [1..3]
  fd 100
  rt 120
fill <span data-dfn="fill color">blue</span>
</pre>

<script type="demo" height=199 width=199>
setup ->
  jumpto -25, -50
demo ->
  pen violet, 10
  for [1..3]
    fd 100
    rt 120
  fill blue
</script>


### Jumping and Filling

<code class="jumbo-inline">fill</code> actually works by filling and retracing the path
that you have drawn with the current pen.

- If you happen to use <code class="jumbo-inline">jump</code>, <code class="jumbo-inline">pen up</code>,
  or <code class="jumbo-inline">pen down</code>, it is still the same path, and the
  discontinuous parts will be filled as separate islands.
- But if you switch pen colors or use <code class="jumbo-inline">pen null</code>, it
  will end the path and start a new one.
- If you don't draw the ends of your shapes together, fill will
  not draw the missing sides: it will just color in what you have drawn.

<pre class="examp">
pen gold, 10
rt 180, 50
pen orangered, 10
for [1..3]
  jump 25, 25
  lt 90
  rt 180, 50
fill orange
</pre>

<script type="demo" height=249 width=249>
setup ->
  moveto -25, 50
demo ->
  pen gold, 10
  rt 180, 50
  pen orangered, 10
  for [1..3]
    jump 25, 25
    lt 90
    rt 180, 50
  pause 1
  fill orange
</script>

### Perfect Paths

Sometimes you have a path that cannot be drawn perfectly by tracing
one line at time.

The program below tries to draw a 'bevel' angle with 'square'
line caps.  Since the turtle traces out one line at a time, the angle is not
a pretty bevel.  It is a mess of overlapped square line caps.

<pre class="examp">
pen red, 25, 'square', 'bevel'
fd 100
rt 120
fd 100
</pre>

<script type="demo" height=199>
setup ->
  moveto -50, -50
  turnto 30
demo ->
  pen red, 25, 'square', 'bevel'
  fd 100
  rt 120
  fd 100
</script>

The way to neatly draw this kind of shape is to draw the whole path
at once.  You can do this by asking the turtle to trace out
an invisible path with <code>pen path</code>.  Then use <code>fill</code>
to set the drawing options all at once.  Fill does not need to fill
the inside of the shape: it can be used to just perfectly stroke the
shape!

The options to fill are passed as an object, and the properties
should be indented with punctuation as in this example:

<pre class="examp">
pen path
fd 100
rt 120
fd 100
fill
  strokeStyle: red
  lineWidth: 25
  lineCap: 'square'
  lineJoin: 'bevel'
</pre>

<script type="demo" height=199>
setup ->
  moveto -50, -50
  turnto 30
demo ->
  pen path
  fd 100
  rt 120
  fd 100
  fill
    strokeStyle: red
    lineWidth: 25
    lineCap: 'square'
    lineJoin: 'bevel'
</script>

Here is a summary of the options that can be passed to fill:

| fill option         | possible values                                       |
|---------------------|-------------------------------------------------------|
| fillStyle           | red, plum, rgb(40,30,200), '#cde', hsla(120,.5,.5,.5) |
| strokeStyle         | *also any color*                                      |
| lineWidth           | *any number of pixels*, e.g., 25                      |
| lineCap             | 'butt', 'round' (default), 'square'                   |
| lineJoin            | 'bevel', 'miter', 'round' (default)                   |
| miterLimit          | *a number for sharpness of miter joins*, e.g., 10     |
| lineDash            | *any array of pixel lengths*, e.g., [10, 10]          |
| lineDashOffset      | *any number of pixels*, e.g., 5                       |

These style properties are from the [HTML5 2D Canvas standard](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D).

