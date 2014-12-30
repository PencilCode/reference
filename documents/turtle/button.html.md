---
title: button
description: creates an interactive control button 
layout: reference
---

<!-- any arguments in brackets? -->
<code>button</code> creates an interactive, clickable control button.

<code>button</code> can be used to call a function or initiate an action when a user clicks the button. 

It takes two arguments: first is the text for the button; second is a function to call whenever the user clicks the button.

<pre class="jumbo" >
  button
  <span data-dfn="button label">"Forward", '->'</span>
  <span data-dfn="action">fd 50</span>
</pre>
  
<script type="demo">
demo ->
  button "Forward", ->
  fd 50
</script>

<h3>Drawing Shapes</h3>

<code>home</code> can be used to create intricate drawings where the center of the shape is the focus, e.g. flowers. 

In this example, we will create an arrow shape. Notice that we move backwards from the center of the page to draw the arrow. 

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
