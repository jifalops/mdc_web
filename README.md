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

This package was created by closely following the above component reference along with the Javascript source. All documented component features as well as some undocumented features are included.

## Documentation

Each class and notable members are documented. Class documentation includes links to corresponding (if available):

* [Design Guidelines](https://material.io/design/components/)
* [Component Reference](https://material.io/develop/web/)
* [Demo](https://material-components.github.io/material-components-web-catalog/#/)
* [Source Code](https://github.com/material-components/material-components-web/tree/master/packages)

## Convention

Dart classes that access Javascript are strictly limited on what else they can do. The convention used in this library is to add any supplemental functionality a class of the same name but with the first letter lower-cased.

These helper classes contain only static members, and are generally used for event names and to cast a `List` to the proper type, because all lists from Javascript are of type `dynamic`.


```dart
@JS('MDCChipSet')
class ChipSet {
  external List get chips;
  ...
}
/// [ChipSet] events and helpers.
class chipSet {
  static List<Chip> chips(ChipSet cs) => List.from(cs.chips);
  ...
}

@JS('MDCDialog')
class Dialog {
  ...
}
/// [Dialog] events and helpers.
class dialog {
  static const openedEvent = 'MDCDialog:opened';
  /// `event.detail`: {action: string?}
  static const closedEvent = 'MDCDialog:closed';
  ...
}
```

When importing this library, it is strongly recommended to import as `mdc`.

## Limitations

Only the components themselves were mirrored. Their foundation and adapter classes are currently beyond the scope of this package as they are for deep customization within other web frameworks. However, the base `MDCFoundation` and `MDCComponent` classes are included. This limitation should not affect 95%+ of use cases.
