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
<span data-dfn="inline comment delimiter">#</span> This it an inline comment
</code>

Any text following the `#` on the same line is ignored by the program and is not run with the rest of the code. **Inline comments only affect text after the `#` on the same line.** Anything before them will still run. This means you can describe what each line does without needing to add extra lines. 

####Block Comments

Unlike inline comments, block comments affect all lines until they are stopped by another block comment delimiter. 

<code class="jumbo">
<span data-dfnright="block comment delimiter">###</span>
This is a
block comment
###
</code>

This is useful for creating a long explanation at the beginning of a file. 

###Blank Lines
