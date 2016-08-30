---
title: keydown
description: do something when a key is pressed
layout: reference
---

`keydown` creates a function that will run when a certain key is pressed. 

### Syntax

<pre class="jumbo">
keydown '<span data-dfnup="key to activate">w</span>', ->
<span data-dfnright="code to run">  ...
  ...
  ...</span>
</pre>

`keydown` can be used to execute functions in a script. 

In the following script, pressing `1` runs `pen red`, `2` runs `pen green`, and `3` runs `pen blue`. The turtle moves to wherever the mouse is clicked using [`click`](click.html). 

<pre class="examp">
pen red
keydown '1', ->
  pen red
keydown '2', ->
  pen green
keydown '3', ->
  pen blue
click (e) ->
  moveto e
</pre>

<script type="figure" width=500 height=450>
pen red
keydown '1', ->
  pen red
keydown '2', ->
  pen green
keydown '3', ->
  pen blue
click (e) ->
  moveto e
</script>
