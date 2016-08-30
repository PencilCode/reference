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

## `await done defer()`

`await done defer()` is probably the most commonly used form of `await`. 

`await done defer()` is used to prevent everything after our from running until everything before it is done. However, `await done defer()` is not just a simple pause. 
