---
title: forever
description: a simple loop
layout: reference
---

A `forever` loop runs as many times per second as possible, capping at around 30. 

A `forever` loop will continue to run until [`stop`](stop.html) is used or the code execution is terminated. 

### Syntax

<pre class="jumbo">
forever ->
  <span data-dfnright="code to run">...
  ...
  ...</span>
</pre>

<pre class="jumbo">
forever <span data-dfnup="loops per second">fps,</span> ->
  <span data-dfnright="code to run">...
  ...
  ...</span>
</pre>

If the loops per second arguement is used, a comma is required after it before the `->`. 

Unlike [`tick`](tick.html), multiple forever loops can be running simultaniously.

<pre class="examp">
  forever ->
    if pressed 'w'
      fd 5
  forever ->
    if pressed 'a'
      lt 5
  forever ->
    if pressed 'd'
      rt 5
  forever ->
    if pressed 's'
      bk 5
</pre>

<script type="demo" caption="Parallel Forever Loops">
demo ->
  forever ->
    if pressed 'w'
      fd 5
  forever ->
    if pressed 'a'
      lt 5
  forever ->
    if pressed 'd'
      rt 5
  forever ->
    if pressed 's'
      bk 5
</script>

<pre class="examp">
  forever ->
    if pressed 'w'
      fd 5
    if pressed 'a'
      lt 5
    if pressed 'd'
      rt 5
    if pressed 's'
      bk 5

</pre>

<script type="demo" caption="Single Forever Loop">
demo ->
  forever ->
    if pressed 'w'
      fd 5
    if pressed 'a'
      lt 5
    if pressed 'd'
      rt 5
    if pressed 's'
      bk 5
</script>
