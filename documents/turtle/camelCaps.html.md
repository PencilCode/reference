---
title: camelCaps
description: a capitalization convention
layout: reference
---

Most programming languages (including CoffeeScript and Javascript) are
<b>case-sensitive</b>:

<pre class="jumbo">tag<span data-dfn="uppercase">N</span>ame&nbsp;&ne;&nbsp;tag<span data-dfn="lowercase">n</span>ame</pre>

It is important to pay attention to
the capitalization of standard names.

<h3>Camels?</h3>

In CoffeeScript and Javascript, names of variables are not allowed to
contain spaces or punctuation such hyphens, so programmers sometimes
use other conventions to denote phrases.

With the <b>camelCaps</b> convention, words in
a phrase are written together as a single word, but with a capital
letter at the start of each word.  The first letter is often
left lowercase if the intention is for the whole word to be "lowercase".

For example the standard function to "add event listener" is
written as a single name:

<code class="jumbo">add<span data-dfn="capitalized">Event</span><span data-dfnup="capitalized">Listener</span></code>

The convention is called camelCaps because of the camel humps in the middle.

<h3>Other Conventions</h3>

While camelCaps is the most common spelling seen for long names
in code on the Web, there are other captialization conventions that
are often seen.

| Context                            | Convention        | Example          |
|------------------------------------|-------------------|------------------|
| Turtle functions                   | lowercase         | jumpto           |
| Javascript/Coffee functions        | lowerCamelCase    | toString         |
| Javascript/Coffee classes          | UpperCamelCase    | RegExp           |
| Constant values                    | UPPER_UNDERSCORE  | SQRT1_2          |
| Special floating point numbers     | UpperCamelCase    | Infinity         |
| HTML tags and attributes           | lowercase         | onclick          |
| DOM event names                    | lowercase         | mousemove        |
| DOM properties                     | lowerCamelCase    | tagName          |
| DOM value for element.tagName      | UPPERCASE         | CANVAS           |
| CSS property names and values      | lower-case-hyphen | font-size        |
| C++, python, ruby names            | lower_underscore  | out_of_range     |

Wikipedia has a whole article about
<a href="http://en.wikipedia.org/wiki/Naming_convention_(programming)"
   target=_blank>naming conventions in different programming languages</a>.

<h3>Inconsistencies</h3>

There ocassional oddball exceptions; for example in CSS, different
values for the "white-space" property include "pre-wrap"
(hyphenated, as usual) and "nowrap" (no hyphens, an exception).

Some inconsistencies have to do with acronyms:

<pre class="jumbo">encode<span data-dfn="acronym">URI</span><span data-dfnup="capitalized">Component</span></pre>

In camelCase names, acronyms are usually fully-capitalized, but not always.
In this standard function name, we see two approaches within the same name:

<pre class="jumbo"><span data-dfn="all-caps">XML</span><span data-dfnup="another acronym">Http</span>Request</pre>

All the different conventions mean that you need to do a little extra
work when using a new set of names.  If you cannot remember the
capitalization of the function you need, look it up!

<h3>Converting CSS Styles to camelCaps</h3>

In some domains, the capitalization rules are very consistent.

Within CSS stylesheet files, hyphens are allowed, and all property
names are all-lowercase-hyphenated.

When CSS style properties are referenced in Javascript and CoffeeScript
where hyphens are not allowed, the convention is to convert the names
to camelCaps in a uniform way: every letter after a hyphen is
capitalized, even if the hyphen comes at the start.

| CSS property name       | Property name in JS or Coffee |
|-------------------------|-------------------------------|
| border-width            | borderWidth                   |
| font-size               | fontSize                      |
| color                   | color                         |
| text-decoration         | textDecoration                |
| -webkit-user-select     | WebkitUserSelect              |

When CSS property names are used in script, (like in the jQuery
<b>css</b> function or the turtle <a href="label.html">label</a>
function), they are used in the camelCaps form.

<pre class="jumbo">
label 'Styling!',
  fontSize: 50
  textDecoration: 'underline'
  color: blue
</pre>

<script type="demo" width=249>
demo ->
  pause 1
  css opacity: 0.67
  label 'Styling!',
    fontSize: 50
    textDecoration: 'underline'
    color: blue
  pause 2
  speed 0.2
  animate
    opacity: .3
</script>

