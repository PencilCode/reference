---
title: click
description: respond to a mouse click 
layout: reference
---

<!-- size of canvas - e.g. width=249 height=99  -->
<code>button</code> creates an interactive, clickable control button.

<code>button</code> can be used to call a function or initiate an action when a user clicks the button. 

It takes two arguments: first is the text for the button; second is a function to call whenever the user clicks the button.

<pre class="jumbo" >
  button
  <span data-dfn="button label">"Forward", -></span>
  
  <span data-dfn="action">fd 50</span>
</pre>
  
<script type="demo">
demo ->
  pen goldenrod, 10
  button "Forward", ->
    fd 50
</script>

<h3>WIP</h3>
<!-- example to call something else as well -->

Interactive commands are ....
