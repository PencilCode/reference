---
title: forever
description: a simple loop
layout: reference
---

A `forever` loop runs as many times per second as possible, capping at around 30. 

A `forever` loop will continue to run until [`stop`](stop.html) is used or the code execution is terminated. 

Unlike [`tick`](tick.html), multiple forever loops can be running simultaniously.

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
