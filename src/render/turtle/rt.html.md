---
title: rt
description: turns the turtle right
layout: reference
section: basic
refOrder: 5
---

<b>rt</b> pivots the clockwise (Right Turn).

The turn is measured in degrees.

<code class="jumbo">rt&nbsp;<span data-dfn="degrees">90</span></code>

Notice that the turtle will not actually move in the new direction
until you tell it to move forward with `fd`.

When using a pen, putting `rt` between two `fd` moves can draw an angle.

<pre class="jumbo">
pen purple
fd 100
rt 120
fd 100
</pre>

Notice that the angle used by `rt` is the <em>exterior</em> angle.
The interior angle added to the exterior angle will be 180.
For example, the 60 degree interior angle drawn by the program
above corresponds to the 120 degree exterior angle swept out by
the turtle.

`rt can also be used to draw curves by using a second argument.
Read the reference page on <a href="curves.html">curves</a>.
