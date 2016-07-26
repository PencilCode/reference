---
title: animation
description: understanding animation queues
layout: reference
---

Many people think that Pencil Code runs code sequentially. It doesn't. Pencil Code actually runs all the code at once, then displays the results after it finishes by creating **animation queues**. 

# Animation Queues

An animation queue is basically just a list of things that an object needs to do. Think of it as a schedule. It tells the object what it needs to do in the order it needs to do them, and each queue is, by default, independent of everyone else's. 

However, there are several commands that modify the way the queues are created and run. 

### Example 1: One Turtle

Let's say you wanted the turtle to turn right, move forward, turn left and move forward again. You would write the following code: 

<pre class="examp">
rt 90
fd 100
lt 90
fd 100
</pre>

<script type="demo" width=220 height=220>
demo ->
  rt 90
  fd 100
  lt 90
  fd 100
</script>

It looks like the code runs sequentially---once the turtle finishes one command, it moves on to the next until the program is complete. 

But what if we add a second turtle?

### Example 2: Two Turtles, Same Code

Let's try creating another turtle named `t`, and using the the same code for both turtles, albiet in the reverse direction (moving in a "U" pattern). Let's also make `t` red for clarity. 

<pre class="examp">
t = new Turtle red
rt 90
fd 100
lt 90
fd 100
t.lt 90
t.fd 100
t.rt 90
t.fd 100
</pre>

test 1

<script type="demo" width=420 height=220>
#setup ->
#  t = null
#  remove t
demo ->
  rt 90
  fd 100
  lt 90
  fd 100
  t = new Turtle red
  t.lt 90
  t.fd 100
  t.rt 90
  t.fd 100
</script>
