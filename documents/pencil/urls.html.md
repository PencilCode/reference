---
title: urls
description: the structure of the Pencil Code server
layout: reference
section: basic
refOrder: 4
---

### How Pencil Code stores your data

The web server for the Pencil Code editor has a simple design.

  * There is a single HTML file (internally called `editor.html`) that does all the work. All `pencilcode.net/edit/...` URLs actually resolve to this same static file.
  * That page makes HTTP GETs to `pencilcode.net/load/...` to load the actual text of programs.
  * And it makes HTTP POSTs to `pencilcode.net/save/...` to write the text of the programs.

Here is a summary of the special URL patterns on Pencil Code that deal
with files saved in a user's directory.

| URL pattern | purpose |
|-------------|---------|
| <em>user</em>.pencilcode.net/<b>edit</b>/dir/filename | Shows normal UI for editing the file |
| <em>user</em>.pencilcode.net/<b>load</b>/dir/filename | Returns JSON contining both data and metadata for the file |
| <em>user</em>.pencilcode.net/<b>save</b>/dir/filename?data=mydata&key=mykey | Stores data for the file |
| <em>user</em>.pencilcode.net/<b>home</b>/dir/filename | Run the file in the users home directory |
| <em>user</em>.pencilcode.net/<b>code</b>/dir/filename | Serves just the main (raw) code of the file |
| <em>user</em>.pencilcode.net/<b>print</b>/dir/filename | Serves a printout, with line numbers, of the code |

### Loading and storing your own data

You can also load and save your own data on the Pencil Code server.

Your files are limited to about one megabyte, so Pencil Code is not
a good server for photos or other media: for those, you should use
an external service such as [Imgur](//imgur.com/) or
[Soundcloud](//soundcloud.com/) or [Youtube](//youtube.com/),
and link to those services using absolute URLs.

When saving your data, rememember to follow the Pencil Code
[terms of service](//pencilcode.net/terms.html).
In particular, do not flood the service with more than a megabyte
of data: Pencil Code is not a bulk storage service, and using it as
one would unfairly deny resources to other students.  If you try to
host spam or copyrighted content or bulk data that are too large,
we may remove the data, or limit or block access.

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

### JSON response format

When loading a file via `/load/`, the response is formatted as JSON.
For example, if you view
(pencilcode.net/load/first)[http://pencilcode.net/load/first], you
will see the following JSON data (though not indented nicely):

```
{
  "file":"/first",
  "data":"speed 2\npen red\nfor [1..25]\n  fd 100\n  rt 88\n",
  "auth":true,
  "mtime":1385737227432,
  "mime":"text/x-pencilcode;charset=utf-8"
}
```

The data of the file is encoded in a string under the `"data"` field,
and all the other fields are metadata.

| Field    | Meaning |
|----------|---------|
| `"file"` | The username (if any) and filename of the file |
| `"data"` | The unicode contents of the file               |
| `"auth"` | True if a password key is needed to save here  |
| `"mtime"`| The modification date in seconds since 1970    |
| `"mime"` | The mime type                                  |
| `"meta"` | (Optional) further metadata for this file      |

The `"meta"` field, when present, is used with Pencil Code
programs without an file extension which to store non-default
language or library choices (the choices under the "gear menu"
in the editor).

### Access keys and turtle methods

To save data in an account, you may need an access key.

Every account has a different access key.  Note that the keys are not
a high-security measure - they are akin to a school combination lock,
mainly to discourage accidental or casual saving over somebody else's
data.  To get the access key that allows programs to save data into
your own account, you should be logged in, and then you can run the
following function, using the turtle library:

```
console.log(save.loginCookie().key)
```

Heed the [terms of service](//pencilcode.net/terms.html) when using
keys: please do experiment with keys, but do not interfere with
another students work by hacking their keys or overwriting their
data.  Pencil Code is a learning community.  We do not require students
to learn bulletproof security measures before storing their data,
so please respect their work and support these novices.

The turtle library also includes simplfied `load` and `save` methods
that unwrap the metadata for you:

```
load 'myfile', (txt) -> write 'got', txt
save 'myfile', 'saved at ' + new Date
```

If you run a program while logged in, the `save` method will use your
cookie to provide the key automatically.

### Other useful URLs

The Pencil Code server also supports a few other useful URLs.

| URL pattern | purpose |
|-------------|---------|
| pencilcode.net/<b>img</b>/any-description | Redirects to a creative-commons image |
| pencilcode.net/<b>proxy</b>/http&#58;//any-url/path | Proxies an HTTP GET to the given URL. |
| pencilcode.net/<b>socket.io</b>/status | Shows the status of socket.io connections. |

