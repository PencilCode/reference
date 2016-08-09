---
title: new Audio
description: play sound from files
layout: reference
---

`new Audio` will allow sound files to be played directly from the code. 

<pre class="jumbo">
example = new Audio('<span data-dfn='url to the file (ending in ".mp3")'>soundfile.mp3</span>')
</pre>

The `new Audio` command itself will only load the file. To play the file, use `play()`. 

<pre class="jumbo">
example = new Audio('soundfile.mp3')
example.play()
</pre>
