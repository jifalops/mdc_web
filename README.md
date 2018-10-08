# mdc_web

Dart wrapper for the material-components-web javascript library.

## Usage

In your index.html, include the script just before the `main.dart.js` script.

```html
<!--
  This exposes the `mdc` global variable required by this package.
  For debugging purposes you can replace the ".min.js" extension with ".js".
-->
<script defer src="packages/mdc_web/material-components-web.min.js"></script>
<script defer src="main.dart.js"></script>
```

Now in your dart application you can use all of the `MDC*` classes as described by the [Material Design Web](https://material.io/develop/web/) component reference.

This package was created by closely following the above component reference along with the Javascript [source code](https://github.com/material-components/material-components-web). All documented component features as well as some undocumented features are included.

## Limitations

Only the components themselves were mirrored. Their foundation and adapter classes are currently beyond the scope of this package as they are for deep customization within other web frameworks. However, the base `MDCFoundation` and `MDCComponent` classes are included. This limitation should not affect 95%+ of use cases.
