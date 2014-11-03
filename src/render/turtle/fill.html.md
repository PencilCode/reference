---
title: fill
description: for making filled shapes
layout: reference
section: drawing
refOrder: 8
---

`fill` can be used together with `pen path` to draw filled shapes.

<code class="jumbo">
pen <span data-dfnup="invisible path">path</span>
fd 100
rt 90
fd 100
fill <span data-dfn="fill color">blue</span>
</code>

When a shape is drawn with [`pen path`](pen.html),
an invisible path is traced out that can be later
filed uding `fill` with any color.
