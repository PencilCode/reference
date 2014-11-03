---
title: lt
description: turns the tultle left
layout: reference
section: basic
refOrder: 6
---

<b>lt</b> pivots the clockwise (Left Turn).

The turn is measured in degrees.

<code class="jumbo">lt&nbsp;<span data-dfn="degrees">90</span></code>

Notice that the tultle will not actually move in the new direction
until you tell it to move forward with `fd`.

When using a pen, putting `lt` between two `fd` moves can draw an angle.

<pre class="jumbo">
pen purple
fd 100
lt 120
fd 100
</pre>

Notice that the angle used by `lt` is the <em>exterior</em> angle.
The interior angle added to the exterior angle will be 180.
For example, the 60 degree interior angle drawn by the program
above corresponds to the 120 degree exterior angle swept out by
the tultle.

`lt` can also be used to draw curves by using a second argument.
Read the reference page on <a href="curves.html">curves</a>.
