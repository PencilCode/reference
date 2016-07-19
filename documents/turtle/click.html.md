---
title: click
description: respond to a mouse click 
layout: reference
---

<!-- size of canvas - e.g. width=249 height=99  -->
<code>click</code> is an [event-handler](event.html) function. When a user clicks on the screen with the mouse, a function is called and an action is performed.
---

###Syntax

<pre class="examp">
click (<span data-dfn="position">e</span>) -> 
  <span data-dfnright="code to run">  #line 1
  #line 2
  #line 3
  #...</span>
</pre>

* `e` is the location the mouse was clicked. This can be used as a location in commands such as [moveto](moveto.html), [jumpto](jumpto.html), [turnto](turnto.html), etc.

`click` preforms like a regular function, but it cannot be called within the code and cannot be given a specific input. It is only called when the user clicks the mouse. The corresponding action can be anything you like, e.g. exit a program, run a script, draw something. 

<!-- blurb about functions  -->
In this example, clicking on the screen moves the turtle to the position that was clicked.

Notice that we have specified `speed Infinity` in order to keep up with the speed of the mouse clicks.  

<pre class="examp">
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

### WIP
<!-- another example, see: http://activity.pencilcode.net/home/worksheet/clickmove.html -->

<!-- blurb about naming functions   -->
