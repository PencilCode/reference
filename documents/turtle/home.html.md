---
title: home
description: returns turtle to the center of the page
layout: reference
---

<!-- any arguments in brackets? -->
`home` returns the turtle to the starting position and scales it back to its original size. 

`home` acts almost like the [`jumpto`](jumpto.html), [`turnto`](turnto.html), and [`scale`](scale.html) commands all in one command. 

Using each command individually would look something like this: 

<pre class="jumbo">
jumpto 0, 0
turnto 0
scale 1/<span data-dfn="the amount the object has already been scaled">x</span>
</pre>

`home` can be used to make symmetrical shapes and graphics.

<pre class="examp">
<span data-dfnright="draw a match">
dot red
label "home", 'top'
p = pen brown, 2
p.bk 30</span>
<span data-dfn="return home">p.home()</span>
</pre>
  
<script type="demo" height=99>
p = null
demo ->
  dot red
  label "home", 'top'
  p = pen brown, 2
  p.bk 30
  p.home()
</script>

<h3>Drawing Shapes</h3>

<code>home</code> can be used to create intricate drawings where the center of the shape is the focus, e.g. flowers. 

In this example, we will create an arrow shape. Notice that we move backwards from the center of the page to draw the arrow. 

<pre class="examp">
<span data-dfnright="draw an arrow">dot blue
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
p.bk 40</span>
</pre>
  
<script type="demo" height=99>
p = null
demo ->
  dot blue
  label "home", 'top'
  p = pen red, 2
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

You can use [jumpto](jumpto.html) to make the turtle jump to specified x and y coordinates on a page.
