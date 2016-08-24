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

The position will be the array `[x, y]`, representing the `x` and `y` coordinates of the object. 

Click the example below to see the turtle's position.

<script type="figure">
p = write ''
forever ->
  p.html "[" + getxy()[0] + ", " + getxy()[1] + "]"
click (e) ->
  moveto e
</script>
