---
title: queue- and frame- example breakdown
description: making art with lines
layout: reference
---

## The Code

<pre class="examp">
ht()
randpos = ->
  [200 * random([-200..200]), 200 * random([-200..200])]
remakea = ->
  col = random color
  a.wear col
  a.pen col
  a.turnto randpos()
remakeb = ->
  col = random color
  b.wear col
  b.pen col
  b.turnto randpos()
remakec = ->
  col = random color
  c.wear col
  c.pen col
  c.turnto randpos()
a = new Turtle
remakea()
b = new Turtle
remakeb()
c = new Turtle
remakec()
while true
  a.fd 200
  remakea()
  b.fd 200
  remakeb()
  c.fd 200
  remakec()
  if not a.touches window
    a.home()
  if not b.touches window
    b.home()
  if not c.touches window
    c.home()
  await done defer()
</pre>

### Parts

There are four functions at work in this code: `randpos()`, `remakea()`, `remakeb()` and `remakec()`. 

The last three are exactly the same except they each affect a different object. 

#### `randpos()`

```coffeescript
randpos = ->
  [200 * random([-200..200]), 200 * random([-200..200])]
```

Generates a random set of coordinates in a 200 by 200 box, centered on the origin. 

#### `remakea()`

```coffeescript
remakea = ->
  col = random color
  a.wear col
  a.pen col
  a.turnto randpos()
```

This function changes the color and pen color of the `a` turtle and turns it to face a location generated by `randpos()`. 

This is the same for the `remakeb()` and `remakec()` functions, but affecting the `b` and `c` turtles respectively. 

#### `while` Loop

```coffeescript
while true
  a.fd 200
  remakea()
  b.fd 200
  remakeb()
  c.fd 200
  remakec()
  await done defer()
```

This `while` loop creates all the motion in the code: moving the turtles, changing their colors and changing their destinations. All of these actions are run in animation queues created by the loop. Because of `await done defer()`, the loop runs every time the turtles finish moving. Because the conditional input is `true`, the loop will continue running until the code is stopped. 

## Output (Normal Speed)

<script type="figure" width=500 height=500>
ht()
randpos = ->
  [random([-100..100]), random([-100..100])]
remakea = ->
  col = random color
  a.wear col
  a.pen col
  a.turnto randpos()
remakeb = ->
  col = random color
  b.wear col
  b.pen col
  b.turnto randpos()
remakec = ->
  col = random color
  c.wear col
  c.pen col
  c.turnto randpos()
a = new Turtle
remakea()
b = new Turtle
remakeb()
c = new Turtle
remakec()
while true
  a.fd 200
  remakea()
  b.fd 200
  remakeb()
  c.fd 200
  remakec()
  await done defer()
</script>
