# KOA Wiki (filtered)

I took the [Koa Wiki Home page](https://github.com/koajs/koa/wiki) and filtered anything that got less than 1000 downloads / month as of October 10, 2017.

## Frameworks

Frameworks, boilerplates and other starter kits using Koa.

Name and description | Downloads
-------------------- | -------------
[koa-generator](https://github.com/base-n/koa-generator) - Koa' application generator just like express-generator(support 1.x && 2.x) | ![](https://img.shields.io/npm/dm/koa-generator.png?style=flat-square)
## Middleware

Known middleware for Koa, you may want to search npm with "koa" to find more.

Koa v2 will try to convert legacy middleware for you, thus many in the lists below might just work out of the box.
See [Readme.md](https://github.com/koajs/koa/tree/v2.x#old-signature-middleware-v1x---deprecated) for more information about legacy middleware usage in Koa v2.

Name and description | Supports v2 | Downloads
-------------------- | :---------: | ---------
[koa-webpack-middleware](https://github.com/leecade/koa-webpack-middleware) - webpack-dev-middleware for koa2 with HMR (Hot Module Replacement). | ✓ | ![](https://img.shields.io/npm/dm/koa-webpack-middleware.png?style=flat-square)
[koa-proxies](https://github.com/vagusX/koa-proxies) - Http Proxy Middleware for Koa@2.x. | ✓ | ![](https://img.shields.io/npm/dm/koa-proxies.png?style=flat-square)

### Security

Name and description | Supports v2 | Downloads
-------------------- | :---------: | ----------
[koa-helmet](https://github.com/venables/koa-helmet) - security headers for koa | ✓ | ![](https://img.shields.io/npm/dm/koa-helmet.png?style=flat-square)
[koa-ip-filter](https://github.com/tunnckoCore/koa-ip-filter) - Middleware for koa that filters IPs against glob patterns, RegExp, string or array of globs using `ip-filter` and `micromatch`. Support custom 403 Forbidden message and custom ID. | ✓ | ![](https://img.shields.io/npm/dm/koa-ip-filter.png?style=flat-square)

### Body Parsing

Name and description | Supports v2 | Downloads
-------------------- | :---------: | ----------
[koa-body](https://github.com/dlau/koa-body) - parse http request body | ✓ | ![](https://img.shields.io/npm/dm/koa-body.png?style=flat-square)
[koa-better-body](https://github.com/tunnckoCore/koa-better-body) - :sparkles: Full-featured koa body parser! :star2: Support parsing text, buffer, json, json patch, json api, csp-report, multipart, form and urlencoded bodies. Works for koa@1, koa@2 and will work for koa@3 with `koa-convert`. :sparkles: | ✓ | ![](https://img.shields.io/npm/dm/koa-better-body.png?style=flat-square)
[koa-json-body](https://github.com/venables/koa-json-body) - parse JSON http request bodies | ✓ | ![](https://img.shields.io/npm/dm/koa-json-body.png?style=flat-square)

### Parameter Validation

Name and description | Supports v2 | Downloads
-------------------- | :---------: | ----------
[koa-better-router](https://github.com/tunnckoCore/koa-better-router) - Stable and lovely router for `koa`, using `path-match`. Foundation for building powerful, flexible and RESTful APIs easily. | ✓ | ![](https://img.shields.io/npm/dm/koa-better-router.png?style=flat-square)
[koa-validate](https://github.com/RocksonZeta/koa-validate) - parameter validate middleware for koa | | ![](https://img.shields.io/npm/dm/koa-validate.png?style=flat-square)
[koa-scheme](https://github.com/MangroveTech/koa-scheme) - parameter validation middleware for koa | | ![](https://img.shields.io/npm/dm/koa-scheme.png?style=flat-square)

### Rate Limiting

Name and description | Supports v2 | Downloads
-------------------- | :---------: | ----------
[ratelimit](https://github.com/koajs/ratelimit) - rate limiting middleware | | ![](https://img.shields.io/npm/dm/koa-ratelimit.png?style=flat-square)


### Routing and Mounting

Name and description | Supports v2 | Downloads
-------------------- | :---------: | ----------
[koa-better-router](https://github.com/tunnckoCore/koa-better-router) - Stable and lovely router for `koa`, using `path-match`. Foundation for building powerful, flexible and RESTful APIs easily. | ✓ | ![](https://img.shields.io/npm/dm/koa-better-router.png?style=flat-square)
[koa-mount](https://github.com/koajs/mount) - mount koa applications as middleware | ✓ | ![](https://img.shields.io/npm/dm/koa-mount.png?style=flat-square)
[koa-router](https://github.com/alexmingoia/koa-router) - RESTful resource router | ✓ | ![](https://img.shields.io/npm/dm/koa-router.png?style=flat-square)
[koa-rewrite](https://github.com/koajs/rewrite) - url rewriting middleware | ✓ | ![](https://img.shields.io/npm/dm/koa-rewrite.png?style=flat-square)

### Documentation

Name and description | Supports v2 | Downloads
-------------------- | :---------: | ----------
[koa-docs](https://github.com/a-s-o/koa-docs) - Koa middleware for automatically generating and serving API documentation | | ![](https://img.shields.io/npm/dm/koa-docs.png?style=flat-square)
[koa-joi-swagger](https://github.com/zaaack/koa-joi-swagger) - Using joi schema to validate request & response, and generate swagger document to create beautiful API documents. | ✓ | ![](https://img.shields.io/npm/dm/koa-joi-swagger.png?style=flat-square)

### File Serving

Name and description | Supports v2 | Downloads
-------------------- | :---------: | ----------
[koa-better-serve](https://github.com/tunnckoCore/koa-better-serve) - Small, simple and correct serving of files, using `koa-send` - nothing more. | ✓ | ![](https://img.shields.io/npm/dm/koa-better-serve.png?style=flat-square)
[koa-send](https://github.com/koajs/send) - a send file utility | ✓ | ![](https://img.shields.io/npm/dm/koa-send.png?style=flat-square)
[koa-sendfile](https://github.com/koajs/sendfile) - a barebone send file utility | ✓ | ![](https://img.shields.io/npm/dm/koa-sendfile.png?style=flat-square)
[koa-static-server](https://github.com/pkoretic/koa-static-server) - Static file serving middleware for koa with directory, rewrite and index support | | ![](https://img.shields.io/npm/dm/koa-static-server.png?style=flat-square)
[koa-static-cache](https://github.com/jonathanong/koa-static-cache) - static file serving from memory | | ![](https://img.shields.io/npm/dm/koa-static-cache.png?style=flat-square)
[koa-serve-static](https://github.com/koa-modules/serve-static) - Serve static files, based on Express's serve-static | ✓ | ![](https://img.shields.io/npm/dm/koa-serve-static.png?style=flat-square)

### Compression

Name and description | Supports v2 | Downloads
-------------------- | :---------: | ----------
[koa-compress](https://github.com/koajs/compress) - compression middleware | ✓ | ![](https://img.shields.io/npm/dm/koa-compress.png?style=flat-square)
[koa-gzip](https://github.com/fengmk2/koa-gzip) - gzip support for koa responses | | ![](https://img.shields.io/npm/dm/koa-gzip.png?style=flat-square)

### Caching

Name and description | Supports v2 | Downloads
-------------------- | :---------: | ----------
[koa-etag](https://github.com/koajs/etag) - etag support for koa responses | ✓ | ![](https://img.shields.io/npm/dm/koa-etag.png?style=flat-square)

### Authentication

Name and description | Supports v2 | Downloads
-------------------- | :---------: | ----------
[koa-passport](https://github.com/rkusa/koa-passport) - Passport middleware for Koa | ✓ | ![](https://img.shields.io/npm/dm/koa-passport.png?style=flat-square)
[koa-jwt](https://github.com/stiang/koa-jwt) - JWT (JSON Web Tokens) verification | ✓ | ![](https://img.shields.io/npm/dm/koa-jwt.png?style=flat-square)

### Sessions

Name and description | Supports v2 | Downloads
-------------------- | :---------: | ----------
[koa-session2](https://github.com/Secbone/koa-session2) - Middleware for Koa2 to get/set session use with custom stores such as Redis or mongodb | ✓ | ![](https://img.shields.io/npm/dm/koa-session2.png?style=flat-square)
[koa-session-minimal](https://github.com/longztian/koa-session-minimal) - a `Koa 2` rewrite of `koa-generic-session`, support its core functionalities and stores | ✓ | ![](https://img.shields.io/npm/dm/koa-session-minimal.png?style=flat-square)
[koa-flash](https://github.com/rickharrison/koa-flash) - flash messages for koa-session | | ![](https://img.shields.io/npm/dm/koa-flash.png?style=flat-square)

### Templating

Name and description | Supports v2 | Downloads
-------------------- | :---------: | ----------
[koa-views](https://github.com/queckezz/koa-views) - Render your views with almost any templating engine | ✓ | ![](https://img.shields.io/npm/dm/koa-views.png?style=flat-square)
[koa-ejs](https://github.com/dead-horse/koa-ejs) - Focus on [ejs](https://github.com/visionmedia/ejs) and support full feature include `layout`, `filters`, `locals`, `include`. | ✓ | ![](https://img.shields.io/npm/dm/koa-ejs.png?style=flat-square)  
[koa-hbs](https://github.com/jwilm/koa-hbs/) - Express-style Handlebars view rendering. | | ![](https://img.shields.io/npm/dm/koa-hbs.png?style=flat-square)
[koa-pug](https://github.com/chrisyip/koa-jade/tree/koa-pug) - a [Pug](https://pugjs.org/api/getting-started.html) (renamed Jade) middleware for Koa | | ![](https://img.shields.io/npm/dm/koa-pug.png?style=flat-square)  

### Services

Name and description | Supports v2 | Downloads
-------------------- | :---------: | ----------
[rethinkdbdash](https://github.com/neumino/rethinkdbdash) - RethinkDB driver with promises and a connection pool. | | ![](https://img.shields.io/npm/dm/rethinkdbdash.png?style=flat-square)

### Livereload

Name and description | Supports v2 | Downloads
-------------------- | :---------: | ----------
[koa-livereload](https://github.com/yosuke-furukawa/koa-livereload) - koa middleware for adding livereload.js | | ![](https://img.shields.io/npm/dm/koa-livereload.png?style=flat-square)

### Error reporting

Name and description | Supports v2 | Downloads
-------------------- | :---------: | ----------
[http-assert](https://github.com/eivindfjeldstad/http-assert) - assert with status codes | | ![](https://img.shields.io/npm/dm/http-assert.png?style=flat-square)


### Logging

Name and description | Supports v2 | Downloads
-------------------- | :---------: | ----------
[koa-logger](https://github.com/koajs/logger) - development style logger | ✓ | ![](https://img.shields.io/npm/dm/koa-logger.png?style=flat-square)
[koa-log4](https://github.com/dominhhai/koa-log4js) - a wrapper for log4js-node which supports koa middleware | ✓ | ![](https://img.shields.io/npm/dm/koa-log4.png?style=flat-square)
[koa-morgan](https://github.com/koa-modules/morgan) - Morgan for koa | ✓ | ![](https://img.shields.io/npm/dm/koa-morgan.png?style=flat-square)

### Metrics

Name and description | Supports v2 | Downloads
-------------------- | :---------: | ----------
[koa-response-time](https://github.com/koajs/response-time) - x-response-time header field middleware | ✓ | ![](https://img.shields.io/npm/dm/koa-response-time.png?style=flat-square)
[koa-ping](https://github.com/AlexeyKhristov/koa-ping) - ping and health route for app status check | | ![](https://img.shields.io/npm/dm/koa-ping.png?style=flat-square)


### i18n or L10n

Name and description | Supports v2 | Downloads
-------------------- | :---------: | ----------
[koa-i18n](https://github.com/koa-modules/i18n) - Lightweight simple translation middleware based on  i18n-2 | ✓ | ![](https://img.shields.io/npm/dm/koa-i18n.png?style=flat-square)


## Utilities

  Misc utilities that are useful for Koa applications. Note that [co](https://github.com/visionmedia/co#yieldables) lets you `yield` a variety of types, so existing libraries using promises etc should work fine.

Name and description | Supports v2 | Downloads
-------------------- | :---------: | ----------
[koa-combine-routers](https://github.com/saadq/koa-combine-routers) - Combine multiple instances of [koa-router](https://github.com/alexmingoia/koa-router). | ✓ | ![](https://img.shields.io/npm/dm/koa-combine-routers.png?style=flat-square)
[koa-compose](https://github.com/koajs/compose) - compose several middleware into one | ✓ | ![](https://img.shields.io/npm/dm/koa-compose.png?style=flat-square)
[koa-convert](https://github.com/gyson/koa-convert) - convert koa legacy ( v0.x & v1.x ) generator middleware to promise middleware ( v2.x ) | ✓ | ![](https://img.shields.io/npm/dm/koa-convert.png?style=flat-square)
[koa-useragent](https://github.com/rvboris/koa-useragent) - Fast Middleware exposing user-agent. | ✓ | ![](https://img.shields.io/npm/dm/koa-useragent.png?style=flat-square)


### Aggregates

  Aggregate modules make including common suites of middleware in your application(s) easier. This mimics the convenience of Connect's bundled middleware without forcing them on people.

  - [common](https://github.com/koajs/common) - mount, logger, response-time, static
  - [opinion](https://github.com/Empeeric/opinion) - my opinion on what's needed to get started

## Applications

Application list using Koa.

 - [cnpmjs.org](http://cnpmjs.org/) - Private npm registry and web for Enterprise, base on koa, MySQL and Simple Store Service.
 - [icp.c.163.com](http://icp.c.163.com/) - A full stack development practice, base on koa, react, MySQL,nos and redis Store
Service.
 - [component-crawler](https://github.com/component/crawler.js) - `component.json` crawler
 - [DailyNode](http://news.rednode.cn/) - A complete, timely aggregator of node things: blog, tutorial, video, npm, tool, framework, conf.
 - [Badgelino](http://j.mp/1xxRbOQ) - Very much work in progress. Fast, extensible badges server. Badges done right. Routes done right.
 - [Booooring.com](http://booooring.com/) - Soundtrack of you office. Using streaming to send small mp3 files smoothly.
 - [N-club](https://github.com/nswbmw/N-club) - A simple forum.

## Screencasts

- [Koajs Quickstart Guide](http://knowthen.com/episode-3-koajs-quickstart-guide/)
- [Koa Introduction @ PluralSight](http://www.pluralsight.com/courses/description/javascript-koa-introduction)
- [Koa Introduction](https://www.youtube.com/watch?v=egLUa6urd6I)
- [Installing Koa Js - a tutorial through failures](https://www.youtube.com/watch?v=fU7Vn30xcGw)
- [Creating a simple HTTP CRUD API with Koa](https://www.youtube.com/watch?v=aTTjednotGQ)
