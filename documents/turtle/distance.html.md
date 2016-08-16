---
title: distance
description: shows the distance between two objects
layout: reference
---

`distance` shows the distance between two objects or locations. 

<pre class="jumbo">
t.distance(<span data-dfnup="distance to coordinates (3, 4)">3, 4</span>)
</pre>

<pre class="jumbo">
t.distance(<span data-dfnup="distance to object s">s</span>)
</pre>

The following example uses `distance(lastmousemove)` to show the distance between the turtle and the mouse. 

<pre class="examp">
p = write ""
forever ->
  p.html distance(lastmousemove)
</pre>

<script type="figure">
p = write ""
forever ->
  p.html distance(lastmousemove)
</script>
