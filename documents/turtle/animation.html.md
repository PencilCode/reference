---
title: animation
description: overview of animation in Pencil Code
layout: reference
---

# Animation

Animation in Pencil Code is pretty self-explanitory, however there are some twists that may throw people off at first. There are some things that need to be done in a specific way in order to work. 

The point of this page is to give a general overview of what some of these quirks might be, and to help you understand what the problem is and how to fix it. 

# Queue-Based Animation

[Queue-based animation](qanimation.html) is the most basic kind of animation. It involves simply using commands like [`fd 100`](fd.html), [`rt 90`](rt.html) and so on. 

This type of animation may seem very straightforward, but it has its drawbacks. There are certain commands that will break because of the way Pencil Code compiles its code into [animation queues](animationqueues.html). 

# Frame-Based Animation

[Frame-based animation](fanimation.html) is slightly more complicated. It involves using loops to control elements on the page, allowing more certainty that the code is running when you want it to run. 

Frame-based animation will always involve setting [`speed Infinity`](fanimation.html)

However, there are drawbacks to this method as well. You need to always keep track of which loops are currently running, as when you run too many loops, it becomes difficult to debug because it is hard to keep track of which loops are affecting which objects. 

# Mixing Queue- and Frame-Based Animation

[Mixing queue- and frame-based animation](qfanimation.html) is the most powerful form of animation possible with Pencil Code. By using this method, you can run code in the background, while still doing simple movements with the basic movement commands. 
