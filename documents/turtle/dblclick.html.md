---
title: dblclick
description: respond to double clicking
layout: reference
---

<!-- size of canvas - e.g. width=249 height=99  -->
`dblclick` is an [event-handler](event.html) function. When a user clicks on the screen with the mouse, a function is called and an action is performed.
---

`dblclick` is the same as [`click`](click.html) in every way except the way it's called. [`click`](click.html) runs every time the mouse is clicked, whereas `dblclick` responds only if the mouse is quickly clicked twice. 
### Syntax

<pre class="examp">
dblclick (<span data-dfn="position">e</span>) -> 
  <span data-dfnright="code to run">  #line 1
  #line 2
  #line 3
  #...</span>
</pre>

* `e` is the location the mouse was clicked. This can be used as a location in commands such as [`moveto`](moveto.html), [`jumpto`](jumpto.html), [`turnto`](turnto.html), etc.

Below is the same code found on the [`click`](click.html) page, but it uses `dblclick` instead. 

<pre class="examp">
speed Infinity
ht()
a = 0
dot lightblue, 10000
label a, { fontSize: 60, fontFamily: "Consolas" }
dblclick ->
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
dblclick ->
  cs()
  dot lightblue, 10000
  a += 1
  label a, { fontSize: 60, fontFamily: "Consolas" }
</script>
