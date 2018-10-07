part of mdc_web;

/// The `mdc.base.MDCFoundation` Javascript class.
///
/// See the [component reference](https://material.io/develop/web/components/base/#mdcfoundation)
/// and [source code](https://github.com/material-components/material-components-web/tree/master/packages/mdc-base).
@JS('base.MDCFoundation')
abstract class MDCFoundation {
  external factory MDCFoundation([adapter]);

  external void init();
  external void destroy();

  external static Map get cssClasses;
  external static Map get strings;
  external static Map get numbers;
  external static dynamic get defaultAdapter;
}