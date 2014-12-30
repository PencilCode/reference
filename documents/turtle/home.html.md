---
title: home
description: returns turtle to the center of the page
layout: reference
---

<!-- any arguments in brackets? -->
<b>home</b> returns the turtle to the center of the page and can be used to make symmetrical shapes and graphics.

<pre class="jumbo"><span data-dfnright="draw a match">
  dot blue
  label "home", 'top'
  p = pen red, 2
  p.bk 30</span>
  <span data-dfnright="return home">
  p.home()
  </span>
</pre>
  
<script type="demo" height=99>
demo ->
  dot blue
  label "home", 'top'
  p = pen red, 2
  p.bk 30
  p.home()
</script>

<h3>Drawing Shapes</h3>

<b>home</b> can be used to create intricate drawings where the center of the shape is the focus, e.g. flowers. 

In this example, we create an arrow. 

<pre class="examp"><span data-dfnright="draw an arrow">
  dot blue
  label "home", 'top'
  p = pen red, 2
  p.bk 30
  p.lt 45
  p.bk 30
  p.pause 1
  p.home()
  p.rt 45
  p.bk 30
  p.pause 1
  p.home()
  p.bk 40
  </span>
</pre>
  
<script type="demo" height=99>
pen = null
demo ->
  dot blue
  label "home", 'top'
  p = pen red, 2
  p.bk 30
  p.lt 45
  p.bk 30
  p.pause 1
  p.home()
  p.rt 45
  p.bk 30
  p.pause 1
  p.home()
  p.bk 40
</script>
