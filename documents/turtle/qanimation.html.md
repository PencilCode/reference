---
title: queue-based animation
description: animation with to-do lists
layout: reference
---

# Queue-Based Animation

[Queue-based animation](qanimation.html) is the most basic kind of animation. It involves simply using commands like [`fd 100`](fd.html), [`rt 90`](rt.html) and so on. 

This type of animation may seem very straightforward, but it has its drawbacks. There are certain commands that will break because of the way Pencil Code compiles its code into [animation queues](animationqueues.html). 

# Frame-Based Animation

[Frame-based animation](fanimation.html) is slightly more complicated. It involves using loops to control elements on the page, allowing more certainty that the code is running when you want it to run. 

Frame-based animation will always involve setting [`speed Infinity`](fanimation.html)

However, there are drawbacks to this method as well. You need to always keep track of which loops are currently running, as when you run too many loops, it becomes difficult to debug because it is hard to keep track of which loops are affecting which objects. 
