---
title: animation
description: a form of coded artwork
layout: reference
---

Animation is one form of artwork that can be created in Pencil Code. It involves using objects (mostly [Turtles](Turtle.html) and [Sprites](Sprite.html), but could involve [Pencils](Pencil.html) as well) to create a scene, like in a play. 

While all commands are useful in Pencil Code, there are a few which are specifically designed to be used in animation to make life easier. 

## Setup

The setup phase is where everything is created; all the actors are created, given the propper appearance, and moved to their starting locations. Objects can be created later, but it could disrupt the timing of the entire animation. 

### Changing the Appearance of Objects

When a turtle is created using `new Turtle`, its appearance matches that of the default turtle. However, this can be changed in a variety of ways. 

When creating the turtle, various [CSS](http://www.w3schools.com/css/default.asp) properties can be set. 

| Property | Expected Value                        | Function                                                                                                            |
|----------|---------------------------------------|---------------------------------------------------------------------------------------------------------------------|
| opacity  |  a number between 0 and 1 (inclusive) | Changes the opacity of the object. <br>1 is fully opaque<br>0 is fully transparent                                  |
| color    | a CSS standard [color](colors.html)   | Changes the color of the object. Unlike [wear](wear.html), this will not give a sprite the appearance of a turtle.  |
| width    | a positive number                     | Changes the width of the object. Can make a turtle appear distorted.                                                |
| height   | a positive number                     | Changes the height of the object. Can make a turtle appear distorted.                                               |

## Timing

Timing is key in animation, but sometimes it can be hard to get everything
