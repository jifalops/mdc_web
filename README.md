[![pub points](https://badges.bar/mdc_web/pub%20points)](https://pub.dev/packages/mdc_web/score)

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

## Documentation

Each class and notable members are documented. Class documentation includes links to corresponding (if available):

* [Design Guidelines](https://material.io/design/components/)
* [Component Reference](https://material.io/develop/web/)
* [Demo](https://material-components.github.io/material-components-web-catalog/#/)
* [Source Code](https://github.com/material-components/material-components-web/tree/master/packages)

## Limitations

Only the components themselves were mirrored. Their foundation and adapter classes are currently beyond the scope of this package as they are for deep customization within other web frameworks. However, the base `MDCFoundation` and `MDCComponent` classes are included. This limitation should not affect most implementations, but if it does affect you, please let me know.
