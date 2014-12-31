---
title: click
description: respond to a mouse click 
layout: reference
---

<!-- size of canvas - e.g. width=249 height=99  -->
<code>click</code> is an event-handler function. When a user clicks on the screen with a  mouse, a function is called and an action performed.

<code>click</code> requires an input to perform a function, i.e. a mouse click. The corresponding action can be anything you like, e.g. exit a program, run a script, draw something. 

In this example, clicking on the screen moves the turtle to that position.

Notice that we have specified <code>speed Infinity</code> in order to keep up with the speed of the mouse clicks.  

<pre class="jumbo" >
  speed Infinity
  click <span data-dfn="function">(e)</span> -> moveto e
</pre>
  
<!-- why doesn't it like it if I keep move etc. on next row -->
<script type="demo">
demo ->
  label "Click anywhere on the cavas to try the code out", 'top'
  speed Infinity
click (e) -> moveto e
</script>

<h3>WIP</h3>
<!-- example to call something else as well -->

Interactive commands are ....
