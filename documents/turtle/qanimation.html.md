---
title: queue-based animation
description: animation with to-do lists
layout: reference
---

Queue-based animation is the most basic kind of animation. It involves simply using commands like [`fd 100`](fd.html), [`rt 90`](rt.html) and so on. 

This type of animation may seem very straightforward, but it has its drawbacks. There are certain commands that will break because of the way Pencil Code compiles its code into [animation queues](animationqueues.html). 

## Speed

No matter what the speed is set to with the [`speed`](speed.html) command, the animation will still be queue-based, unless it's set to `speed Infinity`, in which case it becomes [frame-based animation](fanimation.html). 
