[33mcommit b1590297a843a1d24171a4e34d045a0e8037b813[m[33m ([m[1;36mHEAD -> [m[1;32mmain[m[33m)[m
Author: poompichayout <72862738+poompichayout@users.noreply.github.com>
Date:   Fri Nov 20 15:15:24 2020 +0700

    change background and a little layer

[1mdiff --git a/Procfile b/Procfile[m
[1mindex 489b270..498b515 100644[m
[1m--- a/Procfile[m
[1m+++ b/Procfile[m
[36m@@ -1 +1,5 @@[m
[32m+[m[32m<<<<<<< HEAD[m
 web: node server.js[m
[32m+[m[32m=======[m
[32m+[m[32mweb: node web.js[m
[32m+[m[32m>>>>>>> 90fd58e (init)[m
[1mdiff --git a/node_modules/.bin/express b/node_modules/.bin/express[m
[1mnew file mode 120000[m
[1mindex 0000000..b741d99[m
[1m--- /dev/null[m
[1m+++ b/node_modules/.bin/express[m
[36m@@ -0,0 +1 @@[m
[32m+[m[32m../express/bin/express[m
\ No newline at end of file[m
[1mdiff --git a/node_modules/express/.npmignore b/node_modules/express/.npmignore[m
[1mnew file mode 100644[m
[1mindex 0000000..74bd365[m
[1m--- /dev/null[m
[1m+++ b/node_modules/express/.npmignore[m
[36m@@ -0,0 +1,7 @@[m
[32m+[m[32m.git*[m
[32m+[m[32mdocs/[m
[32m+[m[32mexamples/[m
[32m+[m[32msupport/[m
[32m+[m[32mtest/[m
[32m+[m[32mtesting.js[m
[32m+[m[32m.DS_Store[m
[1mdiff --git a/node_modules/express/History.md b/node_modules/express/History.md[m
[1mindex 6e62a6d..5b4b1ef 100644[m
[1m--- a/node_modules/express/History.md[m
[1m+++ b/node_modules/express/History.md[m
[36m@@ -1,3 +1,4 @@[m
[32m+[m[32m<<<<<<< HEAD[m
 4.17.1 / 2019-05-25[m
 ===================[m
 [m
[36m@@ -2666,53 +2667,105 @@[m
   * Fixed express(1) public dir for windows. Closes #866[m
 [m
 2.5.9/ 2012-04-02[m
[32m+[m[32m=======[m
[32m+[m
[32m+[m[32m2.5.11 / 2012-06-29[m[41m [m
[32m+[m[32m==================[m
[32m+[m
[32m+[m[32m  * Fixed backport of req.protocol[m
[32m+[m
[32m+[m[32m2.5.10 / 2012-06-15[m[41m [m
[32m+[m[32m==================[m
[32m+[m
[32m+[m[32m  * Remove annoying engines field from package.json[m
[32m+[m[32m  * Backport support for trusting X-Forwarded-Proto[m
[32m+[m[32m  * use version of `package.json` for `express` command[m
[32m+[m
[32m+[m[32m2.5.9/ 2012-04-02[m[41m [m
[32m+[m[32m>>>>>>> 90fd58e (init)[m
 ==================[m
 [m
   * Added support for PURGE request method [pbuyle][m
   * Fixed `express(1)` generated app `app.address()` before `listening` [mmalecki][m
 [m
[32m+[m[32m<<<<<<< HEAD[m
 2.5.8 / 2012-02-08[m
[32m+[m[32m=======[m
[32m+[m[32m2.5.8 / 2012-02-08[m[41m [m
[32m+[m[32m>>>>>>> 90fd58e (init)[m
 ==================[m
 [m
   * Update mkdirp dep. Closes #991[m
 [m
[32m+[m[32m<<<<<<< HEAD[m
 2.5.7 / 2012-02-06[m
[32m+[m[32m=======[m
[32m+[m[32m2.5.7 / 2012-02-06[m[41m [m
[32m+[m[32m>>>>>>> 90fd58e (init)[m
 ==================[m
 [m
   * Fixed `app.all` duplicate DELETE requests [mscdex][m
 [m
[32m+[m[32m<<<<<<< HEAD[m
 2.5.6 / 2012-01-13[m
[32m+[m[32m=======[m
[32m+[m[32m2.5.6 / 2012-01-13[m[41m [m
[32m+[m[32m>>>>>>> 90fd58e (init)[m
 ==================[m
 [m
   * Updated hamljs dev dep. Closes #953[m
 [m
[32m+[m[32m<<<<<<< HEAD[m
 2.5.5 / 2012-01-08[m
[32m+[m[32m=======[m
[32m+[m[32m2.5.5 / 2012-01-08[m[41m [m
[32m+[m[32m>>>>>>> 90fd58e (init)[m
 ==================[m
 [m
   * Fixed: set `filename` on cached templates [matthewleon][m
 [m
[32m+[m[32m<<<<<<< HEAD[m
 2.5.4 / 2012-01-02[m
[32m+[m[32m=======[m
[32m+[m[32m2.5.4 / 2012-01-02[m[41m [m
[32m+[m[32m>>>>>>> 90fd58e (init)[m
 ==================[m
 [m
   * Fixed `express(1)` eol on 0.4.x. Closes #947[m
 [m
[32m+[m[32m<<<<<<< HEAD[m
 2.5.3 / 2011-12-30[m
[32m+[m[32m=======[m
[32m+[m[32m2.5.3 / 2011-12-30[m[41m [m
[32m+[m[32m>>>>>>> 90fd58e (init)[m
 ==================[m
 [m
   * Fixed `req.is()` when a charset is present[m
 [m
[32m+[m[32m<<<<<<< HEAD[m
 2.5.2 / 2011-12-10[m
[32m+[m[32m=======[m
[32m+[m[32m2.5.2 / 2011-12-10[m[41m [m
[32m+[m[32m>>>>>>> 90fd58e (init)[m
 ==================[m
 [m
   * Fixed: express(1) LF -> CRLF for windows[m
 [m
[32m+[m[32m<<<<<<< HEAD[m
 2.5.1 / 2011-11-17[m
[32m+[m[32m=======[m
[32m+[m[32m2.5.1 / 2011-11-17[m[41m [m
[32m+[m[32m>>>>>>> 90fd58e (init)[m
 ==================[m
 [m
   * Changed: updated connect to 1.8.x[m
   * Removed sass.js support from express(1)[m
 [m
[32m+[m[32m<<<<<<< HEAD[m
 2.5.0 / 2011-10-24[m
[32m+[m[32m=======[m
[32m+[m[32m2.5.0 / 2011-10-24[m[41m [m
[32m+[m[32m>>>>>>> 90fd58e (init)[m
 ==================[m
 [m
   * Added ./routes dir for generated app by default[m
[36m@@ -2721,7 +2774,11 @@[m
   * Removed `make test-cov` since it wont work with node 0.5.x[m
   * Fixed express(1) public dir for windows. Closes #866[m
 [m
[32m+[m[32m<<<<<<< HEAD[m
 2.4.7 / 2011-10-05[m
[32m+[m[32m=======[m
[32m+[m[32m2.4.7 / 2011-10-05[m[41m [m
[32m+[m[32m>>>>>>> 90fd58e (init)[m
 ==================[m
 [m
   * Added mkdirp to express(1). Closes #795[m
[36m@@ -2732,17 +2789,29 @@[m
   * Fixed `req.flash()`, only escape args[m
   * Fixed absolute path checking on windows. Closes #829 [reported by andrewpmckenzie][m
 [m
[32m+[m[32m<<<<<<< HEAD[m
 2.4.6 / 2011-08-22[m
[32m+[m[32m=======[m
[32m+[m[32m2.4.6 / 2011-08-22[m[41m [m
[32m+[m[32m>>>>>>> 90fd58e (init)[m
 ==================[m
 [m
   * Fixed multiple param callback regression. Closes #824 [reported by TroyGoode][m
 [m
[32m+[m[32m<<<<<<< HEAD[m
 2.4.5 / 2011-08-19[m
[32m+[m[32m=======[m
[32m+[m[32m2.4.5 / 2011-08-19[m[41m [m
[32m+[m[32m>>>>>>> 90fd58e (init)[m
 ==================[m
 [m
   * Added support for routes to handle errors. Closes #809[m
   * Added `app.routes.all()`. Closes #803[m
[32m+[m[32m<<<<<<< HEAD[m
   * Added "basepath" setting to work in conjunction with reverse proxies etc.[m
[32m+[m[32m=======[m
[32m+[m[32m  * Added "basepath" setting to work in conjunction with reverse proxies etc.[m[41m   [m
[32m+[m[32m>>>>>>> 90fd58e (init)[m
   * Refactored `Route` to use a single array of callbacks[m
   * Added support for multiple callbacks for `app.param()`. Closes #801[m
 Closes #805[m
[36m@@ -2750,25 +2819,41 @@[m [mCloses #805[m
   * Dependency: `qs >= 0.3.1`[m
   * Fixed `res.redirect()` on windows due to `join()` usage. Closes #808[m
 [m
[32m+[m[32m<<<<<<< HEAD[m
 2.4.4 / 2011-08-05[m
[32m+[m[32m=======[m
[32m+[m[32m2.4.4 / 2011-08-05[m[41m [m
[32m+[m[32m>>>>>>> 90fd58e (init)[m
 ==================[m
 [m
   * Fixed `res.header()` intention of a set, even when `undefined`[m
   * Fixed `*`, value no longer required[m
   * Fixed `res.send(204)` support. Closes #771[m
 [m
[32m+[m[32m<<<<<<< HEAD[m
 2.4.3 / 2011-07-14[m
[32m+[m[32m=======[m
[32m+[m[32m2.4.3 / 2011-07-14[m[41m [m
[32m+[m[32m>>>>>>> 90fd58e (init)[m
 ==================[m
 [m
   * Added docs for `status` option special-case. Closes #739[m
   * Fixed `options.filename`, exposing the view path to template engines[m
 [m
[32m+[m[32m<<<<<<< HEAD[m
 2.4.2. / 2011-07-06[m
[32m+[m[32m=======[m
[32m+[m[32m2.4.2. / 2011-07-06[m[41m [m
[32m+[m[32m>>>>>>> 90fd58e (init)[m
 ==================[m
 [m
   * Revert "removed jsonp stripping" for XSS[m
 [m
[32m+[m[32m<<<<<<< HEAD[m
 2.4.1 / 2011-07-06[m
[32m+[m[32m=======[m
[32m+[m[32m2.4.1 / 2011-07-06[m[41m [m
[32m+[m[32m>>>>>>> 90fd58e (init)[m
 ==================[m
 [m
   * Added `res.json()` JSONP support. Closes #737[m
[36m@@ -2780,14 +2865,22 @@[m [mCloses #805[m
   * Changed; default cookie path to "home" setting. Closes #731[m
   * Removed _pids/logs_ creation from express(1)[m
 [m
[32m+[m[32m<<<<<<< HEAD[m
 2.4.0 / 2011-06-28[m
[32m+[m[32m=======[m
[32m+[m[32m2.4.0 / 2011-06-28[m[41m [m
[32m+[m[32m>>>>>>> 90fd58e (init)[m
 ==================[m
 [m
   * Added chainable `res.status(code)`[m
   * Added `res.json()`, an explicit version of `res.send(obj)`[m
   * Added simple web-service example[m
