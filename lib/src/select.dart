part of mdc_web;

/// A drop-down selection menu.
///
/// Javascript: `mdc.select.MDCSelect`.
///
/// See the [component reference](https://material.io/develop/web/components/input-controls/select-menus/#mdcselect-api)
/// and [source code](https://github.com/material-components/material-components-web/tree/master/packages/mdc-select/index.js).
@JS('select.MDCSelect')
abstract class MDCSelect extends MDCComponent implements MDCSelectionControl {
  external static MDCSelect attachTo(Element element);
  external factory MDCSelect(Element element, [MDCFoundation foundation, args]);

  external bool get disabled;
  external void set disabled(bool value);
  external String get value;
  external void set value(String value);

  /// Set to -1 if no option is currently selected.
  external num get selectedIndex;
  external void set selectedIndex(num value);
}
