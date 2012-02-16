wreq
====

node-style `require()`s in the browser without a compile step

This module parses the dependency graph of modules at runtime and pre-fetches
dependencies using asynchronous XMLHttp in parallel.

example usage
=============

First write some node-style require()s:

js/beep.js:

``` js
module.exports = 'beepity'
```

js/boop.js:

``` js
module.exports = 'boop!!!'
```

js/entry.js:

``` js
var beep = require('./beep.js');
var boop = require('./boop.js');

var elem = document.getElementById('res');
elem.innerHTML = beep + ' ' + boop;
```

Now load up `"/wreq.js"` and `"/js/entry.js"` in some script tags.
The files that you want to load with wreq should be `type="text/wreq"`.
You can get `wreq.js` from this repository in the root directory.

``` html
<script src="/wreq.js"></script>
<script src="/js/entry.js" type="text/wreq"></script>

<div id="res">[]</div>
```

Now load `index.html`. That's it, no compile step and you get node-style
so-called "synchronous" `require()`s.

Now let's all stop making those ridiculous arguments that node-style
`require()`s necessarily entail synchronous XHR or a server-side build step
[or other silliness](http://wiki.ecmascript.org/doku.php?id=harmony:modules).

install
=======

Copy `wreq.js` or `wreq.min.js` into your project. All done.

license
=======

MIT/X11
