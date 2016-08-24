---
title: forever
description: a simple loop
layout: reference
---

A `forever` loop runs as many times per second as possible, capping at around 30. 

A `forever` loop will continue to run until [`stop()`](stop.html) is used or the code execution is terminated. 

### Syntax

<pre class="jumbo">
forever ->
<span data-dfnright="code to run">  ...
  ...
  ...</span>
</pre>

<pre class="jumbo">
forever <span data-dfnup="loops per second">fps,</span> ->
<span data-dfnright="code to run">  ...
  ...
  ...</span>
</pre>

If the "loops per second" arguement is used, a comma is required after it before the `->`. 

Unlike [`tick`](tick.html), multiple `forever` loops can be running simultaniously.

<pre class="examp">
forever ->
  if pressed 'w'
    fd 2
forever ->
  if pressed 'a'
    lt 2
forever ->
  if pressed 'd'
    rt 2
forever ->
  if pressed 's'
    bk 2
</pre>

<script type="demo" caption="Parallel Forever Loops">
demo ->
  forever ->
    if pressed 'w'
      fd 2
  forever ->
    if pressed 'a'
      lt 2
  forever ->
    if pressed 'd'
      rt 2
  forever ->
    if pressed 's'
      bk 2
</script>

<pre class="examp">
forever ->
  if pressed 'w'
    fd 2
  if pressed 'a'
    lt 2
  if pressed 'd'
    rt 2
  if pressed 's'
    bk 2
</pre>

<script type="demo" caption="Single Forever Loop">
demo ->
  forever ->
    if pressed 'w'
      fd 2
    if pressed 'a'
      lt 2
    if pressed 'd'
      rt 2
    if pressed 's'
      bk 2
</script>

### IDs

Every `forever` loop has its own unique ID that is created when it is first called. This can be used in the [`stop()`](stop.html) command to stop only a specific loop. 

The ID can be found using the following method. 

<pre class="examp">
forever ->
  if pressed 'w'
    fd 2
forever ->
  if pressed 'a'
    lt 2
forever ->
  if pressed 'd'
    rt 2
id = forever ->
  if pressed 's'
    bk 2
button 'Stop Backwards Loop', ->
  stop(id)
</pre>

<script type="demo" width=500 height=400>
demo ->
  forever ->
    if pressed 'w'
      fd 2
  forever ->
    if pressed 'a'
      lt 2
  forever ->
    if pressed 'd'
      rt 2
  id = forever ->
    if pressed 's'
      bk 2
  button 'Stop Backwards Loop', ->
    stop(id)
</script>
