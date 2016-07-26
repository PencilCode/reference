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

Let's try creating another turtle named `bob`, and using the the same code for both turtles, albiet in the reverse direction (moving in a "U" pattern). Let's also make `bob` red for clarity. 

<pre class="examp">
rt 90
fd 100
lt 90
fd 100
bob = new Turtle red
bob.lt 90
bob.fd 100
bob.rt 90
bob.fd 100
</pre>

<script type="figure" width=420 height=240>
go = ->
  rt 90
  fd 100
  lt 90
  fd 100
  bob = new Turtle red
  bob.lt 90
  bob.fd 100
  bob.rt 90
  bob.fd 100
  click (e) ->
    if (!turtle.queue().length)
      speed(Infinity)
      pen(null)
      home()
      cs()
      speed(1)
      go()
go()
</script>

If the code ran sequentially, the turtle would have moved, and once it reached the end, it would have stopped and `bob` would have appeared and started moving. 

However, they were both created at the same time, and their movement queued at the same time, meaning that the queues were created and run at the same time. 

Let's take a closer look at the code. 

<pre class="jumbo">
<span data-dfnright="turtle's queue">
rt 90
fd 100
lt 90
fd 100
</span>
bob = new Turtle red
<span data-dfnright="bob's queue">
bob.lt 90
bob.fd 100
bob.rt 90
bob.fd 100
</span>
</pre>

And these queues translate to: 

| turtle's queue | bob's queue |
|----------------|-------------|
| rt 90          | lt 90       |
| fd 100         | fd 100      |
| lt 90          | rt 90       |
| fd 100         | fd 100      |

This code happens to have corresponding actions running at the same time, but what if we unbalance the queues?

### Example 3: Unbalanced Queues

If we have the same number of commands, the queues will run at the same time (as shown above). But if we have a different number of actions being queued, it
