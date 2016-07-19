---
title: Comments
description: words with no meaning
layout: reference
---

CoffeeScript, like most other programming languages, has two ways of creating comments: inline comments and block comments

###Inline Comments

Inline comments are generally used to describe the function of a line to other users or to make a note or a reminder to do something. 

<code class="jumbo">
<span data-dfn="inline comment delimiter">\#</span> This it an inline comment
</code>

Any text following the `#` on the same line is ignored by the program and is not run with the rest of the code. **Inline comments only affect text after the `#` on the same line.** Anything before the `#` will still run. This means you can describe the function of each line of code without needing to add extra lines. 

For example: 

<pre class='examp'>
box = (size) -> #Draws a black box of a specified size
  rt 180
  fd .5 * size
  rt 90
  pen black
  fd .5 * size
  rt 90
  fd size
  rt 90
  fd size
  rt 90
  fd size
  rt 90
  fd .5 * size
  pen none
  rt 90
  fd .5 * size
  </pre>

###Block Comments

Unlike inline comments, block comments affect all lines until they are stopped by another block comment delimiter. 

<code class="jumbo">
<span data-dfnup="block comment delimiter">\#\#\#</span>
This is a
block comment
\#\#\#
</code>

This is useful for creating a long explanation at the beginning of a file. 
