#!/bin/bash
cat <(echo '(function () {') \
    <(browserify src/entry.js) \
    <(echo '})()') \
    > wreq.js
uglifyjs wreq.js > wreq.min.js
