---
title: animation
description: understanding animation queues
layout: reference
---

Many people think that Pencil Code runs code sequentially. It doesn't. Pencil Code actually runs all the code at once, then displays the results after it finishes by creating **animation queues**. 

### Animation Queues

An animation queue is basically just a list of things that an object needs to do. Think of it as a schedule. It tells the object what it needs to do in the order it needs to do them, and each queue is, by default, independent of everyone else's. 

However, there are several commands that modify the way the queues are created and run. 

##### Example 1

If I want the turtle to move 
