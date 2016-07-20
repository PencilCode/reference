---
title: twist
description: changes the rotation of an image
layout: reference
---

The twist command allows you to rotate the appearance of an object without changing its actual rotation. This means that, if an image is rotated the wrong way, you don't have to edit the image itself; you can simply rotate it in the code! 

For instance, say you wanted to use the image below in your code. 

<script type="figure" width=100 height=300>
ht()
speed Infinity
enterprise = new Sprite
enterprise.wear 'https://i.imgur.com/PhKFPpt.png'
enterprise.scale .25
enterprise.twist -90
</script>

You'd probably want it to be horizontal, not vertical. 
