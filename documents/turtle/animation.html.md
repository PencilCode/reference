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
