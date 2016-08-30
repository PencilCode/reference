---
title: await
description: wait for an event
layout: reference
---

`await` prevents everything after it from running until a value is returned by a function. 

### Syntax

<pre class="jumbo">
await <span data-dfnup="a function to run">function()</span> defer(<span data-dfn="return value">x</span>)
</pre>

* The function can be anything that returns a value. The most commonly used values include inputs (`read`, `readnum`, `keydown`, etc.) and `done`. 

`await read defer()` is an easy way to wait for an input from the user. 

Input the following commands to control the turtle.

fd: move forward 50<br>
bk: move backward 50<br>
rt: turn right 15<br>
lt: turn left 15

<pre class="examp">
p = write ''
while x isnt 'done'
  await read 'Input: ', defer(x)
  if x is 'fd'
    fd 50
  if x is 'bk'
    bk 50
  if x is 'lt'
    lt 15
  if x is 'rt'
    rt 15
  ct()
</pre>

<script type="figure">
p = write ''
while x isnt 'done'
  await read 'Input: ', defer(x)
  if x is 'fd'
    fd 50
  if x is 'bk'
    bk 50
  if x is 'lt'
    lt 15
  if x is 'rt'
    rt 15
  ct()
</script>

## `await done defer()`

`await done defer()` is probably the most commonly used form of `await`. 

`await done defer()` is used to prevent everything after our from running until everything before it is done. However, `await done defer()` is not just a simple pause. 
