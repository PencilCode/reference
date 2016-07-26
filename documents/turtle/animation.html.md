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
<span data-dfnright="turtle's queue">rt 90
fd 100
lt 90
fd 100
</span>
bob = new Turtle red
<span data-dfnright="bob's queue">bob.lt 90
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

If we have the same number of commands, the queues will run at the same time (as shown above). However, if we have a different number of actions being queued, it desynchronizes the two turtles. 

<pre class="examp">
pen red
rt 90
fd 100
pen blue
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
  pen red
  rt 90
  fd 100
  pen blue
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

Now the queues look more like this: 

| turtle's queue | bob's queue |
|----------------|-------------|
| pen red        | lt 90       |
| rt 90          | fd 100      |
| fd 100         | rt 90       |
| pen blue       | fd 100      |
| lt 90          | &nbsp;      |
| fd 100         | &nbsp;      |

This means when the turtle is running `pen red`, bob is already running `lt 90`, and `bob` finishes while the turtle is still running `pen blue`. 

But wait! There's a command to fix this: [`sync()`](sync.html)

We can use the `sync()` command to make `bob` wait for the turtle so it doesn't fall behind. 

### Example 4: Syncing with `sync()`

The `sync()` command will allow us to hold movement of `bob` until the turtle has the same amount of work left in its queue. 

<pre class="examp">
pen red
rt 90
fd 100
pen blue
lt 90
bob = new Turtle red
bob.lt 90
bob.fd 100
bob.rt 90
sync(turtle, bob)

bob.fd 100
fd 100
</pre>

<script type="figure" width=420 height=240>
go = ->
  pen red
  rt 90
  fd 100
  pen blue
  lt 90
  bob = new Turtle red
  bob.lt 90
  bob.fd 100
  bob.rt 90
  sync(turtle, bob)
  bob.fd 100
  fd 100
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

In the queue, this `sync()` would look something like this: 

| turtle's queue | bob's queue |
|----------------|-------------|
| pen red        | lt 90       |
| rt 90          | fd 100      |
| fd 100         | rt 90       |
| pen blue       | ======      |
| lt 90          | ======      |
| fd 100         | fd 100      |

`sync()` holds everything after it from being run until all the queues are empty up to it, then it continues. This only applies for the objects specified. 

# The Problem

Because all the code is run at once in the beginning, some commands may appear to fail, but they are actually just running in the wrong place. Fortunately, there are ways of fixing this. 


### Example 5: The `.touches` Paradox

Say you have 
