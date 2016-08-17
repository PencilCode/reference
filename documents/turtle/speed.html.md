---
title: speed
description: sets turtle speed in moves per second
layout: reference
section: drawing
refOrder: 0
---

Control the speed of the turtle using `speed`.

`speed` is one of the commands used for controlling [animation](animation.html). 

Five moves per second:

<pre class="jumbo">
speed 5
</pre>

<script type="demo" width=249 height=99>
setup ->
  moveto -100, 0
  rt 90
demo ->
  speed 5
  for [1..8]
    dot random(color), 10
    fd 25
  plan ->
    p = new Pencil
    p.bk 5
    p.label 'click to see speed 5 again', 'bottom'
</script>

Ten moves per second:

<pre class="jumbo">
speed 10
</pre>

<script type="demo" width=249 height=99>
setup ->
  moveto -100, 0
  rt 90
demo ->
  speed 10
  for [1..8]
    dot random(color), 10
    fd 25
  plan ->
    p = new Pencil
    p.bk 5
    p.label 'click to see speed 10 again', 'bottom'
</script>

As fast as your computer can move (often looks instant, and thus is used in [frame-based animation](fanimation.html)):

<pre class="jumbo">
speed Infinity
</pre>

<script type="demo" width=249 height=99>
setup ->
  moveto -100, 0
  rt 90
demo ->
  speed Infinity
  for [1..8]
    dot random(color), 10
    fd 25
  plan ->
    p = new Pencil
    p.bk 5
    p.label 'click to see speed Infinity again', 'bottom'
</script>

<h3>Default Speed</h3>

The starting default speed for turtles is one move per second.
The program below does not specify a speed, so it takes one second to
draw each dot, and another second to move forward between
each dot.  Since the program repeats those two motions 8 times, the
turtle takes 8&times;2=16 seconds total to complete its animation.

<pre class="examp">
for [1..8]
  dot random(color), 10
  fd 25
</pre>

<script type="demo" width=249 height=99>
setup ->
  moveto -100, 0
  rt 90
demo ->
  for [1..8]
    dot random(color), 10
    fd 25
  plan ->
    p = new Pencil
    p.bk 5
    p.label 'click to see default speed again', 'bottom'
</script>

<h3>Turtles with Diffent Speeds</h3>

If you have more than one turtle, they will all animate simultaneously.

Each one can set its own speed using the per-turtle method <b>t.speed</b>.
The global function <b>speed</b> controls the default speed for all
turtles, used when they have not set their own speed.

<pre class="examp">
speed Infinity
a = (new Turtle for [0..8])
for t, j in a
  t.moveto 0, j*25 - 100
  t.rt 90
  if j > 0
    t.speed j
  for [1..8]
    t.dot random(color), 10
    t.fd 25
</pre>

<script type="demo" width=399 height=249>
p = new Pencil
setup ->
  ht()
demo ->
  speed Infinity
  plan ->
    a = (new Turtle for [0..8])
    for t, j in a
      t.moveto -50, j*25 - 100
      t.rt 90
      t.label (
          if j
            "a[#{j}].speed #{j}"
          else
            "speed Infinity"
        ),
        fontFamily:'monospace'
        labelSide:'left'
        padding:15
      t.pause 2
      if j > 0
        t.speed j
      for [1..8]
        t.dot random(color), 10
        t.fd 25
  sync $('.turtle')
</script>

<h3>How Turtle Speed Works</h3>

Each turtle is a jQuery object that animates using the jQuery animation queue.

When you tell a turtle to take a sequence of motions, it makes a list
of all the motions right away, but it does not do them until later.
When your program finishes running, the turtle starts working through
its list, using some time for each command.  Each turtle has
its own list, and its own speed.

That means that a program that creates a 20-second animation is
actually done running almost instantly, because all it needs to do
is give the turtle a list of commands!  The turtle walks through
the motions after the program is done sending all the commands.
You can see the effect writing output to the screen using a function
that runs immediately without using the jQuery animation queue,
like <b>log</b>:

<pre class="examp">
pen red
for j in [1..5]
  rt 360, 50
  log "#{j}: sent rt 360, 60"
  rt 144
  log "#{j}: sent rt 144"
</pre>

<script type="demo" height=199 width=249>
p = new Pencil
t = write('queue').css position: 'absolute', bottom: 0, right: 0, padding: 3
t.addClass 'turtlefield'
stopped = false
tick 30, ->
  t.text 'queue length ' + if stopped then 0 else turtle.queue().length
demo = ->
  pen red
  for j in [1..5]
    rt 360, 50
    log "#{j}: sent rt 360, 60"
    rt 144
    log "#{j}: sent rt 144"
click ->
  stopped = true
  finish()
  cs()
  home()
  pause 1
  plan ->
    stopped = false
    demo()
demo()
</script>

If you need to run code later, after the turtle has moved,
you can use the <a href="plan.html">plan</a> command to put
your own code on the jQuery animation queue.

By default, turtle motions animate by taking the number of milliseconds
in the special jQuery variable <b>$.fx.speeds.turtle</b>.  This number
starts at 1000 milliseconds (1 second), which is pretty slow.

The <b>speed</b> function changes this number.  For example, calling
"speed 5" chages $.fx.speeds.turtle to 1000/5 = 200 milliseconds,
speeding up all turtles to take 5 steps per second.

When individual turtles override their own speed, their speed is
stored in the pseudo-CSS property 'turtleSpeed'.  The following
does the same thing as <b>turtle.speed 10</b>.

<pre class="examp">
turtle.css turtleSpeed: 100
</pre>

<script type="demo" width=249 height=99>
setup ->
  moveto -100, 0
  rt 90
demo ->
  turtle.css turtleSpeed: 100
  for [1..8]
    dot random(color), 10
    fd 25
  plan ->
    p = new Pencil
    p.bk 5
    p.label 'click to use css turtleSpeed again', 'bottom'
</script>

<h3>Going Really Fast</h3>

<b>speed Infinity</b> sets the animation time to zero, which means
turtle motion occurs immediately, as soon as you run it (as long
as there is nothing else already ahead of it in the queue).

When making an interactive program where you need to be
aware of the turtle position at any instant, you are likely to want to
use <b>speed Infinity</b> at the beginning of your program.  That way
every turtle movement command happens immediately, and you can know
where the turtle is going to be right away.  This technique
is often used with the <a href="tick.html">tick</a> command,
which lets you create your own animation frames.

If you use a turtle speed that is slower than Infinity, jQuery will
move turtles on its own time, some time after you have requested
the motion.  That can sometimes have surprising effects.

<p>For example, <b>speed 10000000</b> does not actually go any faster than
<b>speed 100</b>.  That is because the master jQuery animation timer uses
<b>$.fx.interval</b> for the frame duration, and the default value is
13 milliseconds (about 77 frames per second).  If you wish to move faster
than speed 77 (but slower than Infinity), then you can experiment with
changing this number.
