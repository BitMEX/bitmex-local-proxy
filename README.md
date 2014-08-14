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
