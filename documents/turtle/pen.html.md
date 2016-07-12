---
title: pen
description: changes the pen color
layout: reference
section: basic
refOrder: 2
---

<b>pen</b> will pick a drawing color
When the turtle moves, it will trace out a line in the pen color.

<pre class="jumbo">pen <span data-dfn="color">blueviolet</span></pre>

<script type="demo" height=99>
p = new Pencil
setup ->
  moveto -50, 0
  turnto 90
demo ->
  plan ->
    p.home()
    p.fd 20
    p.label 'pen blueviolet',
      labelSide: 'top', fontFamily: 'monospace', lineHeight: '140%'
  pause 0.5
  pen blueviolet
  pause 1
  plan ->
    $('label').eq(0).append('<br>fd 100');
  pause 0.5
  fd 100
  pause 2
  plan ->
    p.home()
    p.pen black, 0.7
    p.lt 45
    p.bk 5
    p.home()
    p.rt 45
    p.bk 5
    p.home()
    p.bk 15
    p.pen null
    p.fd 8
    p.label 'blueviolet color', 'bottom bottom'
</script>

<h3>Colors</h3>

Here are some basic colors that can be used with pen:

<center><table style="border-collapse:separate;border:0;border-spacing:8px;"><tr>
<td style="background:white;width:50px;text-align:center">white</td>
<td style="background:yellow;width:50px;text-align:center">yellow</td>
<td style="background:lime;width:50px;text-align:center">lime</td>
<td style="background:aqua;width:50px;text-align:center">aqua</td>
<td style="background:blue;width:50px;text-align:center">blue</td>
<td style="background:fuchsia;width:50px;text-align:center">fuchsia</td>
<td style="background:red;width:50px;text-align:center">red</td>
<td style="background:silver;width:50px;text-align:center">silver</td>
</tr><tr>
<td style="background:gray;color:silver;width:50px;text-align:center">gray</td>
<td style="background:olive;color:silver;width:50px;text-align:center">olive</td>
<td style="background:green;color:silver;width:50px;text-align:center">green</td>
<td style="background:teal;color:silver;width:50px;text-align:center">teal</td>
<td style="background:navy;color:silver;width:50px;text-align:center">navy</td>
<td style="background:purple;color:silver;width:50px;text-align:center">purple</td>
<td style="background:maroon;color:silver;width:50px;text-align:center">maroon</td>
<td style="background:black;color:silver;width:50px;text-align:center">black</td>
</tr>
</tr></table></center>

For all 140 standard named colors, see [the color table](colors.html).

<h3>Thick Lines</h3>

<b>pen</b> accepts an optional second argument, which is the width of the
pen in pixels.  Remember that arguments need to be separated by
a comma.

<code class="jumbo">pen <span data-dfn="color">pink</span><span data-note="comma">,</span>&nbsp;<span data-dfn="size">20</span></code>

<script type="demo" height=99>
p = new Pencil
setup ->
  moveto -50, 0
  turnto 90
demo ->
  plan ->
    p.home()
    p.fd 20
    p.label 'pen pink, 20',
      labelSide: 'top', fontFamily: 'monospace', lineHeight: '140%'
  pause 0.5
  pen pink, 20
  pause 1
  plan ->
    $('label').eq(0).append('<br>fd 100');
  pause 0.5
  fd 100
  pause 2
  plan ->
    p.home()
    p.pen black, 0.7
    p.jump -25, -10
    p.lt 45
    p.bk 5
    p.home()
    p.jump -25, -10
    p.rt 45
    p.bk 5
    p.home()
    p.jump -25, -10
    p.bk 15
    p.pen null
    p.label 'pink color', 'bottom'
</script>

<h3>Line Cap Styles</h3>

<b>pen</b> accepts an optional third argument, which is the name of
a line-cap style to use.

| line-cap style    | pen shape    | example                                |
|-------------------|--------------|----------------------------------------|
| 'round' (default) | circle       | <code>pen coral, 25, 'round'</code>    |
| 'square'          | square       | <code>pen skyblue, 25, 'square'</code> |
| 'butt'            | flat brush   | <code>pen violet, 25, 'butt'</code>    |

<script type="demo" height=199 width=199>
speed 1

s = new Sprite
   width: 200
   height: 200
s.addClass 'turtlefield'
p = new Pencil s
p.cross = (s) ->
  @jump 0, -s
  @move 0, 2 * s
  @jump -s, -s
  @move 2 * s, 0
  @jump -s, 0
plan ->
  p.pen black, 0.7
  for j in [0...3]
    p.jumpto -50, j * 50 - 25
    p.cross 5
    p.jumpto 50, j * 50 - 25
    p.cross 5
  p.jumpto -50, -60
  p.move 0, -5
  p.move 100, 0
  p.move 0, 5
  p.jump -50, -5
  p.label "fd 100", 'bottom'
  p.pen null
  $('label').addClass 'turtlefield'

setup ->
  jumpto -50, 75
  turnto 90

demo ->
  pen coral, 25, 'round'
  fd 100
  plan ->
    p.moveto 0, 75
    p.label "'round'"
  pause 1
  jump 50, -100
  pen skyblue, 25, 'square'
  fd 100
  plan ->
    p.moveto 0, 25
    p.label "'square'"
  pause 1
  jump 50, -100
  pen violet, 25, 'butt'
  fd 100
  plan ->
    p.moveto 0, -25
    p.label "'butt'"

</script>

Remember to enclose the line cap style in quotes.  These line cap
values are [strings](/coffeescript/strings.html).

Round line caps are the default.  They are forgiving and useful for
general gometric shapes.  Butt line cas are useful when you need a line
that is exactly the length that you asked for.  Square line caps are
useful for lining up rectangular shapes with line ends.

<h3>Line Join Styles</h3>

To control the appearance of corners, use the optional fourth argument
of <b>pen</b>, which controls a line-join style to use.

| line-join style   | corners | example                                       |
|-------------------|---------|-----------------------------------------------|
| 'round' (default) | rounded | <code>pen coral, 25, 'butt', 'round'</code>   |
| 'miter'           | sharp   | <code>pen skyblue, 25, 'butt', 'miter'</code> |
| 'bevel'           | flat    | <code>pen violet, 25, 'butt', 'bevel'</code>  |


<script type="demo" height=199 width=349>
s = new Sprite
   width: 200
   height: 200

p = new Pencil s
p.cross = (s) ->
  @jump 0, -s
  @move 0, 2 * s
  @jump -s, -s
  @move 2 * s, 0
  @jump -s, 0
p.pen black, 0.7

write '<code class="turtlefield" id="narration" style="position:fixed;bottom:5px;left:0;right:0;width:100%;text-align:center"></code">'

narrate = (action) ->
  plan ->
    $('#narration').text(action)
  CoffeeScript.eval(action)

setup ->
  moveto -150, 50
  turnto 90

demo ->
  narrate "pen coral, 25, 'butt', 'round'"
  plan ->
    p.jumpto -50, 50
    p.cross 5
  fd 100
  plan ->
    p.jumpto -50, 50 + 10
    p.label "'round'", 'top'
  rt 120
  fd 100
  jump -57.735
  rt 180
  narrate "pen skyblue, 25, 'butt', 'miter'"
  plan ->
    p.jumpto 0, 25
    p.cross 5
  fd 100
  plan ->
    p.jumpto 0, 25 + 15
    p.label "'miter'", 'top'
  rt 120
  fd 100
  jump -57.735
  rt 180
  narrate "pen violet, 25, 'butt', 'bevel'"
  plan ->
    p.jumpto 50, 50
    p.cross 5
  fd 100
  plan ->
    p.jumpto 50, 50 + 10
    p.label "'bevel'", 'top'
  rt 120
  fd 100
</script>

Names of both line-cap styles and line-join styles are taken from the
HTML5 Canvas and SVG standards.

<h3>Pretty Paths</h3>

When tracing out a colored path with a, the path is continuously
drawn with one end at the turtle.

This can sometimes result in overdrawing.  For example, if you have a
line-cap style like <b>square</b> that extends beyond the
line-join shape for a sharp angle, extra pixels can stick out if
you draw the path continuously.

This can be solved by using a pen to trace
out an invisible path, then using the [fill](fill.html) command
to draw the whole path at once.  With <b>fill</b>, you specify
the line drawing options by name:

<pre class="examp">
pen <span data-dfnup="invisible pen">path</span>
<span data-dfnright="trace path">fd 100
rt 120
fd 100</span>
fill
<span data-dfnright="line options">  strokeStyle: green
  lineWidth: 25
  lineCap: square</span>
</pre>

<script type="demo" height=249 width=349>
p = new Pencil
setup ->
  moveto -125, -25
  turnto 30

demo ->
  plan ->
    p.jumpto -75, -35
    p.label "pen red, 25, 'square'", 'bottom'
  pen red, 25, 'square', 'bevel'
  fd 100
  rt 120
  plan ->
    p.jumpto -75, 80
    p.label "overdrawn corner", 'top'
  fd 100
  lt 120
  jumpxy 50, 0
  plan ->
    p.jumpto 75, -52
    p.label "pen path", 'top'
  pen path
  fd 100
  rt 120
  fd 100
  plan ->
    p.label "fill<br> &nbsp; strokeStyle: green<br> &nbsp; lineWidth: 25<br> &nbsp; lineCap: 'square'", 'bottom'
  fill strokeStyle: green, lineWidth: 25, lineCap: 'square'
  plan ->
    p.jumpto 75, 80
    p.label "pretty corner", 'top'
</script>

[fill](fill.html) can also be used to fill shapes with solid colors using
the default <b>fillStyle</b> property.

<h3>Erasing</h3>

There is also special "color" called *erase* that will remove any existing color it passes over. 

<pre class="examp">
pen red
fd 50
home()

pen erase
fd 50
</pre>

<script type="demo">
demo ->
  pen red
  fd 50
  home()
  
  pen erase
  fd 50
</script>
