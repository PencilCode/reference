---
title: animation queues
description: understanding how animation queues work
layout: reference
---

When Pencil Code runs a program that animates an object, it may appear that the code in the program runs one line per second, during the progress of the animation.  It does not.

Pencil Code actually runs all the code that sets up an animation at once before the animation begins. Then it displays the animated results after the program finishes by using **animation queues**. 

# Animation Queues

An animation queue is a list of tasks that an object needs to do in the future, like a schedule. It tells the object what it needs to do in the order it needs to do them, and each object's queue is (by default) independent of every other object. 

There are several commands that modify the way the queues are created and run. 

### Example 1: One Turtle

The following code tells the turtle to turn right, move forward, turn left and move forward again, and to animate it so that each step can be seen.

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

It looks like the code run during the animation: once the turtle finishes one command, it appears that the next line of code runs until the program is complete. However, the code does not actually run during the animation, as we can tell if we add a second turtle.

### Example 2: Two Turtles, Same Code

The following program creates a second turtle named `bob` and uses the the similar code for both turtles, turning in the reverse direction. The turtle `bob` is colored red for clarity. 

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

If the code ran sequentially during the animation, the main turtle would have moved, and once it reached the end, it would have stopped and `bob` would have appeared and started moving. 

However, the animation shows both turtles at the same time, and their movement runs simultaneously.

What happens is the code runs quickly before the animation starts.  Both turtles are created, and animation commands are added to each of their queues. Once the program is done, the animation begins, and the turtles move simultaneously by following the instructions in their queues.

Let us take a closer look at the code. 

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

After the program has finished running, neither turtle has moved yet. However, they both have animation queues which contain the following commands to animate in the future:

| turtle's queue | bob's queue |
|----------------|-------------|
| rt 90          | lt 90       |
| fd 100         | fd 100      |
| lt 90          | rt 90       |
| fd 100         | fd 100      |

This code happens to have corresponding actions running at the same time, but what if we unbalance the queues?

### Example 3: Unbalanced Queues

We have see above that if we use the same number of commands with two turtles, the queues will run at the same time. However, if we have a different number of actions being queued, it desynchronizes the two turtles. 

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

There is a command that can be used to synchronize queues again: [`sync()`](sync.html)

### Example 4: Syncing with `sync()`

The `sync()` command will allow us to hold movement of `bob` so that it and the turtle can finish together. 

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

The [`.touches`](touches.html) command is a perfect example of a command that breaks because of this method of compiling code. 

### Example 5: The `.touches` Paradox

Say you have the following code:

<pre class="examp">
bob = new Turtle red
fd 50
write touches bob
</pre>

The expected output is `false`, since there is clearly a space between the turtle and `bob`. 

<script type="demo">
demo ->
  bob = new Turtle red
  fd 50
  write touches bob
</script>

For some reason, the command seems to have broken, right? Wrong. The value of `touches bob` was calculated when the code was run, **before** the turtle had moved, and at that time, they were touching. However, it wasn't displayed until that point in the turtle's queue. 

### Example 6: This isn't a Lie

This example is designed to prove that the `.touches` command does, in fact, work. `false` is the expected value in the example above, and the reason it's returning `true` is because of the time the check is being run. 

By looping the check, we can guarantee that the falue returned by `touches bob` is actual at that moment in time. 

<pre class="examp">
p = write ''
forever ->
  p.text touches bob

bob = new Turtle red
fd 50
bk 100
fd 100
</pre>

<script type="demo">
setup ->
  
demo ->
  p = write ''
  forever ->
    p.text touches bob
  
  bob = new Turtle red
  fd 50
  bk 100
  fd 100
</script>
