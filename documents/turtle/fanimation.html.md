---
title: frame-based animation
description: like frames of a movie
layout: reference
---

# Frame-Based Animation

[Frame-based animation](fanimation.html) is slightly more complicated. It involves using loops to control elements on the page, allowing more certainty that the code is running when you want it to run. 

Frame-based animation will always involve setting [`speed Infinity`](fanimation.html)

However, there are drawbacks to this method as well. You need to always keep track of which loops are currently running, as when you run too many loops, it becomes difficult to debug because it is hard to keep track of which loops are affecting which objects. 
