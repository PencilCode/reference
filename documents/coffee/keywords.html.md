---
title: CoffeeScript Keywords
description: words with fixed meaning
layout: reference
---

CoffeeScript, the default language in Pencil Code, has a few dozen
built-in keywords that have a fixed meaning that can never be redefined
by a program.  Here is a complete list of all the fixed keywords
in CoffeeScript:


| CoffeeScript Keywords       |                                               |
|-----------------------------|-----------------------------------------------|
| | **Loops** |
| `for`, `while`, `loop`, `by`   | Repeats part of a program                  |
| `in`,  `of`                    | Tests or lists elements in a container     |
| `break`, `continue`            | Gets out of a repeated loop                |
| | **Choices** |
| `if`, `then`, `else`, `unless` | Picks between two choices in a program     |
| `switch`, `when`, `default`    | Makes multi-way choices                    |
| | **Choices** |
| `->`                           | Declares a function                        |
| `return`                       | Finishes a function normally               |
| `do`                           | Binds variables in a nested function block |
| | **Logic** |
| `is`, `isnt`                   | Tests equality and inequality              |
| `and`, `or`, `not`             | Combines boolean values                    |
| `true`, `yes`, `on`            | Synonyms for the `true` boolean value      |
| `false`, `no`, `off`           | Synonyms for the `false` boolean value     |
| | **Exceptions** |
| `throw`                        | Signals an unusual error                   |
| `try`, `catch`, `finally`      | Handles unusual errors                     |
| | **Objects** |
| `new`, `delete`                | Creates or deletes objects                 |
| `class`, `extends`, `super`    | Defines types of objects                   |
| `typeof`, `instanceof`         | Inspects or tests the type of an object    |
| | **Variables** |
| `this`                         | Refers to the current object               |
| `arguments`                    | Refers to the current function arguments   |
| | **Continuations**  |
| `await`, `defer`               | Suspends a function to wait for a result   |
| `yield`                        | Suspends a function to yield a result      |
| | **Special Values** |
| `null`, `undefined`            | Two values representing absence of an object|
| `Infinity`, `NaN`              | Two special mathematical values            |

CoffeeScript also has reserved keywords that do not mean anything in
the language, but they are used in other programming languages, so
to avoid confusion, you are not allowed to use these words in your programs.
Here is that list.

| Unused Reserved Keywords                                                  | |
|---------------------------------------------------------------------------|-|
| `export`, `import`, `package`, `let` | Reserved for future CoffeeScript  |
| `case`, `debugger`, `function`, `var`, `with`                          | Used in JavaScript  |
| `private`, `protected`, `public`, `native`, `static`,<br> `const`, `implements`, `interface`, `void`, `enum`  | Used in Java or C++  |

All other words in a CoffeeScript program can be redefined by
an ordinary program.

Non-Keyword Identifiers
-----------------------

Other built-in functions may be predefined, but they can be redefined by your
program.

Normally you want to avoid redefining a built-in function to avoid
confusing people who are reading your code.  However, it is legal
to do.

For example the `fd` command that moves the turtle forward is not fixed.
You could redefine it so that it prints the distance when it moves, like
this:

<pre class="examp">
fd = (distance) ->
  write distance
fd 5
fd 20
</pre>

<script type="demo" height=99>
demo ->
  fd = (distance) ->
    write distance
  fd 5
  fd 20
</script>

Instead of moving the turtle forward, this program will write numbers to
the screen.   That is because `fd` has been redefined to now be
a function that writes text to the screen.

As you can see, you would not normally want to write a program that does
this, because it is confusing to anybody who expects to see `fd` used
in the default way.

