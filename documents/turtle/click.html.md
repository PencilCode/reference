---
title: click
description: respond to a mouse click 
layout: reference
---

<!-- size of canvas - e.g. width=249 height=99  -->
<code>click</code> is an [event-handler](event.html) function. When a user clicks on the screen with the mouse, a function is called and an action is performed.
---

### Syntax

<pre class="jumbo">
click (<span data-dfn="position">e</span>) -> 
  <span data-dfnright="code to run">  #line 1
  #line 2
  #line 3
  #...</span>
</pre>

* `e` is the location the mouse was clicked. This can be used as a location in commands such as [`moveto`](moveto.html), [`jumpto`](jumpto.html), [`turnto`](turnto.html), etc.

`click` preforms like a regular function, but it cannot be called within the code and cannot be given a specific input. It is only called when the user clicks the mouse. The corresponding action can be anything you like, e.g. exit a program, run a script, draw something. 

<!-- blurb about functions  -->
In this example, clicking on the screen moves the turtle to the position that was clicked.

Notice that we have specified `speed Infinity` in order to keep up with the speed of the mouse clicks.  

<pre class="jumbo">
  speed Infinity
  click <span data-dfn="function">(e)</span> -> moveto e
</pre>

<!-- why doesn't it like it if I keep move etc. on next row -->
<script type="figure">
label "Click anywhere on the cavas to try the code out", 'top'
speed Infinity
click (e) -> moveto e
</script>

But `click` does not have to use the location of the mouse at all. 

The following example counts the number of times the mouse is clicked, regardless of location. 

<pre class="examp">
speed Infinity
ht()
a = 0
dot lightblue, 10000
label a, { fontSize: 60, fontFamily: "Consolas" }
click ->
  cs()
  dot lightblue, 10000
  a += 1
  label a, { fontSize: 60, fontFamily: "Consolas" }
</pre>

<script type="figure">
speed Infinity
ht()
a = 0
dot lightblue, 10000
label a, { fontSize: 60, fontFamily: "Consolas" }
click ->
  cs()
  dot lightblue, 10000
  a += 1
  label a, { fontSize: 60, fontFamily: "Consolas" }
</script>

Note that, in the above example, if you click fast enough, you can actually select the label. This is because a [`label`](label.html) is actually an [HTML](http://www.w3schools.com/html/default.asp) element. 

<!-- another example, see: http://activity.pencilcode.net/home/worksheet/clickmove.html -->

<!-- blurb about naming functions   -->
