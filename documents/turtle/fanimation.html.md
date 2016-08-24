---
title: frame-based animation
description: like frames of a movie
layout: reference
---

Frame-based animation is slightly more complicated than [queue-based animation](qanimation.html). It involves using loops to control elements on the page, allowing more certainty that the code is running when you want it to run. 

Frame-based animation will always involve setting [`speed Infinity`](speed.html)

However, there are drawbacks to this method as well. You need to always keep track of which loops are currently running, as when you run too many loops, it becomes difficult to debug your code because it is hard to keep track of which loops are affecting which objects. 

## Examples of Frame-Based Animation

### An Analog Timer

This timer resets the frame every second, erasing the entire screen and drawing it again each time. Because of `speed Infinity`, this happens instantly with no visible delay. The loop runs 1 time per second because of the [`forever`](forever.html) loop with the `1` arguement (indicating 1 loop per second). 

<pre class="examp">
ht()
speed Infinity
t = 0

drawClock = ->
  cs()
  dot white, 10000
  for i in [1..60]
    pen lightgray
    fd 100
    bk 100
    rt 6

advance = ->
  drawClock()
  pen red
  fd 100
  bk 100
  rt 6
  dot white, 40
  label t, labelSide: 'centered'
  t += 1

forever 1, ->
  advance
</pre>

<script type="figure" height=220 width=220>
ht()
speed Infinity
t = 0

drawClock = ->
  cs()
  dot white, 10000
  for i in [1..60]
    pen lightgray
    fd 100
    bk 100
    rt 6

advance = ->
  drawClock()
  pen red
  fd 100
  bk 100
  rt 6
  dot white, 40
  label t, labelSide: 'centered'
  t += 1

forever 1, ->
  advance()
</script>
