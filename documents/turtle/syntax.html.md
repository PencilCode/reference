---
title: Syntax
description: the syntax of Pencil Code
layout: reference
---

###Inline and Block Comments

Comments are used to write plain text into code without breaking the original code. They can be used to help users understand how the code works or to explain how to use it (such as the controls). 

####Inline Comments

Inline comments are generally used to describe the function of a line to other users or to make a note or a reminder to do something. 

<code class="jumbo">
<span data-dfn="inline comment delimiter">\#</span> This it an inline comment
</code>

Any text following the `#` on the same line is ignored by the program and is not run with the rest of the code. **Inline comments only affect text after the `#` on the same line.** Anything before the `#` will still run. This means you can describe the function of each line of code without needing to add extra lines. 

####Block Comments

Unlike inline comments, block comments affect all lines until they are stopped by another block comment delimiter. 

<code class="jumbo">
<span data-dfnup="block comment delimiter">\#\#\#</span>
This is a
block comment
\#\#\#
</code>

This is useful for creating a long explanation at the beginning of a file. 

###Functions

Functions can be used to represent a piece of code that can be run simply by writing the name of the function, along with optional inputs if so desired. 

There are two ways of creating a function. The first one is almost exclusively for use in situations where you can only have one line of code or the new line character is unavailable (such as the terminal). 

<code class="examp">
<span data-dfnup="name">myFunction</span> = (<span data-dfnup="inputs">v1, v2, v3</span>) -> line 1<span data-note="line seperator">;</span> line 2; line 3; ...
</code>

<code class="examp">
<span data-dfnup="name">myFunction</span> = (<span data-dfnup="inputs">v1, v2, v3</span>) -> 
  line 1
  line 2
  line 3
  ...
</code>
