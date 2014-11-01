---
title: label
description: writes text under the turtle
layout: reference
---

<b>label</b> writes text at the turtle position.

<code class="jumbo">label <span data-dfnup="quote">'</span><span data-dfn="text">You are here.</span><span data-dfnup="quote">'</span></code>

<script type="demo" height=99>
pause 1
go = ->
  speed 1
  cs()
  css opacity: 0.67
  pause 1
  label "You are here.", fontFamily: 'serif'
  pause 1
  speed 0.2
  animate
    opacity: .3
go()
click ->
  if not turtle.is ':animated'
    go()
</script>

The text of a label is a <a href="/coffeescript/strings.html">string</a>, so it should be
quoted.  The string may contain <a href="html.html">HTML</a>.

<h3>Bigger Labels</h3>

<b>label</b> can create a larger label with an optional second argument.

<code class="jumbo">label <span data-dfn="string">'Hg'</span><span data-note="comma">,</span>&nbsp;<span data-dfn="size">100</span></code>

<script type="demo" width=249>
pause 2
go = ->
  speed 1
  cs()
  css opacity: 0.67
  pause 1
  label "Hg", fontFamily: 'serif', fontSize: 100
  pause 1
  plan ->
    p = new Pencil
    p.jumpto 70, 50
    p.pen black, .7
    p.moveto 75, 50
    p.moveto 75, -50
    p.moveto 70, -50
    p.pen null
    p.jumpto 90, 0
    p.rt 90
    p.label '100 pixels'
    remove p
  speed 0.2
  animate
    opacity: .3
go()
click ->
  if not turtle.is ':animated'
    go()
</script>

<h3>Colors and Fonts</h3>

Instead of a size, the last argument to <b>label</b> can be a
<a href="css.html">CSS style object</a>.  Any CSS styles can be used.
If there are more than one, the block of object properties should be
indetned.

<pre class="jumbo">label <span data-dfnup="first argument">'Simple'</span>,
<span data-dfnright="css style object">  fontFamily: 'Arial'
  fontWeight: 'bold'
  fontSize: 50
  <span data-dfn="property">color</span>: <span data-dfn="value">orange</span></span>
</pre>

<script type="demo" width=249>
pause 2
go = ->
  speed 1
  cs()
  pause 1
  css opacity: 0.67
  label "Simple", fontFamily: 'Arial', fontWeight: 'bold',
    color: orange, fontSize: 50
  pause 1
  plan ->
    p = new Pencil
    p.jumpto 75, 25
    p.pen black, .7
    p.moveto 80, 25
    p.moveto 80, -25
    p.moveto 75, -25
    p.pen null
    p.jumpto 90, 0
    p.rt 90
    p.label '50 pixels'
    remove p
  speed 0.2
  animate
    opacity: .3
go()
click ->
  if not turtle.is ':animated'
    go()
</script>

<h3>Rotated Labels</h3>

The <b>label</b> command inherits visual styles from the turtle,
including its current rotation, scale, and position.  To create a
rotated label, just rotate the turtle first.

<pre class="jumbo">
lt <span data-dfnup="degrees">90</span>
label <span data-dfn="no style given">'Population'</span>
</pre>

<script type="demo">
pause 2
go = ->
  speed 1
  cs()
  pause 1
  lt 90
  pause 1
  label "Population", fontFamily: 'serif'
  pause 1
  speed 0.2
  animate
    opacity: .3
go()
click ->
  if not turtle.is ':animated'
    go()
</script>

<h3>Labels on the Side</h3>

<b>label</b> supports a special
CSS pseudo-style, <b>labelSide</b>, that controls the relative position
and rotation of the label.  Standard CSS does not include <b>labelSide</b>;
it only works within the <b>label</b> command.

<pre class="jumbo">
rt 90
label 'A', labelSide: '<span data-dfnup="above the turtle">top</span>'
pen purple
fd 100
label 'B', <span data-dfn="special property name">labelSide</span>: '<span data-dfn="below the turtle">bottom</span>'
</pre>

<script type="demo">
pause 2
go = ->
  speed Infinity
  cs()
  moveto -50, 0
  turnto 0
  speed 1
  pause 1
  rt 90
  pause 1
  label 'A', labelSide: 'top'
  pause 1
  pen purple
  fd 100
  pause 1
  label 'B', labelSide: 'bottom'
  pause 1
  speed 0.2
  animate
    opacity: .3
go()
click ->
  if not turtle.is ':animated'
    go()
</script>

The labelSide property should be a space-separated string including one or
more of the following words:

| labelSide       | meaning                                  |
|-----------------|------------------------------------------|
| top             | positioned above the turtle              |
| bottom          | positioned below the turtle              |
| right           | positioned to the right of the turtle    |
| left            | positioned to the left of the turtle     |
| centered        | centered directly over the turtle        |
| rotated         | oriented as the turtle is rotated        |
| scaled          | scaled as the turtle                     |

More then one word can be included such as "top left rotated".
If labelSide is not specified, it defaults to "centered rotated scaled".
