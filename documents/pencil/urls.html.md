---
title: urls
description: the structure of the Pencil Code server
layout: reference
section: basic
refOrder: 4
---

### How Pencil Code stores your Data

The web server for the Pencil Code editor has a simple design.

  * There is a single HTML file (internally called `editor.html`) that does all the work. All `pencilcode.net/edit/...` URLs actually resolve to this same static file.
  * That file does HTTP requests to `pencilcode.net/load/...` the actual text of programs you write.
  * And it does HTTP requests to `pencilcode.net/save/...` to write the actual data of the programs you write.

Here is a summary of the special URL patterns on Pencil Code.

| URL pattern | purpose |
|-------------|---------|
| <em>user</em>.pencilcode.net/<b>edit</b>/dir/filename | Shows normal UI for editing the file |
| <em>user</em>.pencilcode.net/<b>load</b>/dir/filename | Returns JSON contining both data and metadata for the file |
| <em>user</em>.pencilcode.net/<b>save</b>/dir/filename?data=mydata&key=mykey | Stores data for the file |
| <em>user</em>.pencilcode.net/<b>home</b>/dir/filename | Run the file in the users home directory |
| <em>user</em>.pencilcode.net/<b>code</b>/dir/filename | Serves just the main (raw) code of the file |
| <em>user</em>.pencilcode.net/<b>print</b>/dir/filename | Serves a printout, with line numbers, of the code |

### Loading and Storing your own Data

You can also load and save your own data on the Pencil Code server.

Your files are limited to about one megabyte, so Pencil Code is not
a good server for photos or other media: for those, you should use
an external service such as [Imgur](//imgur.com/) or
[Soundcloud](//soundcloud.com/) or [Youtube](//youtube.com/),
and link to those services using absolute URLs.

Pencil Code is good for storing small text or data files for your
application.  If you save data, you can use file extensions like
`.txt` or `.json` or `.xml` to indicate the data type.

You can post to the *load* and *save* urls using jQuery as follows.

In JavaScript:
```js
$.get('/load/dir/filename',
  function (m) {
    console.log('loaded', m);
  }
);

$.post('/save/dir/filename',
  { key: '012', data: 'my data' },
  function (m) {
    console.log('saved and got', m);
  }
);
```

In CoffeeScript, the equivalent code:
```
$.get '/load/dir/filename', (m) ->
  console.log 'loaded', m

$.post '/save/dir/filename',
  key: '012'
  data: 'my data'
  (m) ->
    console.log 'saved and got', m
```

### Access Keys and Turtle Methods

Every account has a different access key.  Note that the keys are not
a high-security measure - they are akin to a school combination lock,
mainly to discourage accidental or casual saving over somebody else's
data.  To get the access key that allows programs to save data into
your own account, you should be logged in, and then you can run the
following function, using the turtle library:

```
console.log(save.loginCookie().key)
```

The turtle library also includes simplfied `load` and `save` methods
that unwrap the metadata for you:

```
load 'myfile', (txt) -> write 'got', txt
save 'myfile', 'saved at ' + new Date
```

### Other Useful URLs

The Pencil Code server also supports a few other useful URLs.

| URL pattern | purpose |
|-------------|---------|
| pencilcode.net/<b>img</b>/any-description | Redirects to a creative-commons image |
| pencilcode.net/<b>proxy</b>/http&#58;//any-url/path | Proxies a fetch to the given URL.  Useful for accessing public data without cookies or other cross-domain security issues. |
| pencilcode.net/socket.io/status | Shows the status of socket.io connections. |

