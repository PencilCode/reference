---
title: speed
description: Sets default turtle speed in moves per second.
layout: reference
section: drawing
refOrder: 0
---

Control the speed of the turtle using <code>speed</code>.

Five moves per second:

<pre class="jumbo" data-after="pen yellow&#13;for [1..10]&#13;  fd 10&#13;  rt 36">
speed 5
</pre>

Ten moves per second:

<pre class="jumbo" data-after="pen orange&#13;for [1..10]&#13;  fd 10&#13;  rt 36">
speed 10
</pre>

As fast as your computer can move (often looks instant):

<pre class="jumbo" data-after="pen red&#13;for [1..10]&#13;  fd 10&#13;  rt 36">
speed Infinity
</pre>
