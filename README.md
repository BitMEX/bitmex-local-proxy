BitMEX-Local-Proxy
==================

A really simple proxy intended for use with webapps, as we are not serving CORS headers on our API.

Usage:

```bash
npm install
node proxy.js 2080
curl localhost:2080/instrument
> [{"symbol":"XBTP14","state":"Open","typ":"FXXXS","listing":"2014-06-27T12:00:00.000Z"...
```

Why would I use this?
---------------------

This is just an example for use with your custom web application that hits the BitMEX API.

BitMEX intentionally does not server `Access-Control-Allow-Origin` headers on its API so that
calls cannot accidentally or maliciously be made from other origins, from the user's browser.

If you want users of your site to make calls to BitMEX's API, say, for orderBook or ticker data,
you must proxy it rather than make a direct AJAX request from the user's browser.
