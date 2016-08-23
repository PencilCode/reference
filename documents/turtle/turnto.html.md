---
title: turnto
description: turns the turtle to an absolute direction
layout: reference
section: drawing
refOrder: 0
---

`turnto` is used to turn the turtle toward a position. 

Unlike [`lt`](lt.html) and [`rt`](rt.html), `turnto` does not depend on the turtle's current rotation. Instead it accepts an object name, position or an absolute [angle](angles.html). 

`turnto 90` turns the turtle straight right no matter its initial direction. 

`turnto lastmousemove` will turn the turtle to face the mouse. 
