---
title: getxy
description: getting an object's position
layout: reference
---

`getxy()` returns the position of an object. 

### Syntax

<pre class="jumbo">
<span data-dfnup="object">jim</span>.getxy()
</pre>

The position will be the [array](array.html) `[x, y]`, representing the `x` and `y` coordinates of the object. 

Click the example below to see the turtle's position.

<script type="figure">
p = write ''
forever ->
  p.html "[" + getxy()[0] + ", " + getxy()[1] + "]"
click (e) ->
  moveto e
</script>

Because `getxy()` returns an [array](array.html), it is very easy to get either the `x` or `y` coordinate without getting the other as well. 

The following example will only return the `x` value because of `getxy()[0]`. `getxy()[1]` would return the `y` value. 

<pre class="examp">
p = write ''
forever ->
  x = getxy()[0]
  p.text "x =" + x
click (e) ->
  moveto e
</pre>

<script type="figure">
p = write ''
forever ->
  x = getxy()[0]
  p.text "x = " + x
click (e) ->
  moveto e
</script>
