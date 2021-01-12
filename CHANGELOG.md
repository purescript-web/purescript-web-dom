# Changelog

Notable changes to this project are documented in this file. The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/) and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

Breaking changes:

New features:

Bugfixes:

Other improvements:

## [v4.1.0](https://github.com/purescript-web/purescript-web-dom/releases/tag/v4.1.0) - 2020-06-07

Added `Show` instance for `NodeType` (@srghma)

## [v4.0.2](https://github.com/purescript-web/purescript-web-dom/releases/tag/v4.0.2) - 2020-05-18

Fixed FFI implementation for `hasAttribute` (#22, @srghma)

## [v4.0.1](https://github.com/purescript-web/purescript-web-dom/releases/tag/v4.0.1) - 2020-03-15

Add documentation explaining how to get hold of a `Document` in `Web.DOM.Document` (@hdgarrood, #19)

## [v4.0.0](https://github.com/purescript-web/purescript-web-dom/releases/tag/v4.0.0) - 2019-08-18

Fixed type of `mutationObserver` (@alextes)

## [v3.1.0](https://github.com/purescript-web/purescript-web-dom/releases/tag/v3.1.0) - 2019-08-18

Added `classList` for `Element` (@alextes)

## [v3.0.0](https://github.com/purescript-web/purescript-web-dom/releases/tag/v3.0.0) - 2019-06-02

`nodeValue` now returns `Effect (Maybe String)` as it is nullable (@bbarker)

## [v2.0.0](https://github.com/purescript-web/purescript-web-dom/releases/tag/v2.0.0) - 2019-02-23

Bumped `-web-events` dependency, `Event.defaultPrevented` is now effectful.

## [v1.0.0](https://github.com/purescript-web/purescript-web-dom/releases/tag/v1.0.0) - 2018-05-25

Initial release

