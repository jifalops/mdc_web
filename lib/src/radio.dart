part of mdc_web;

/// Radio buttons select one item out of a list.
///
/// Javascript: `mdc.radio.MDCRadio`.
///
/// See the [component reference](https://material.io/develop/web/components/input-controls/radio-buttons/#mdcradio-properties-and-methods)
/// and [source code](https://github.com/material-components/material-components-web/tree/master/packages/mdc-radio/index.js).
@JS('radio.MDCRadio')
abstract class MDCRadio extends MDCComponent implements MDCSelectionControl {
  external static MDCRadio attachTo(Element element);
  external factory MDCRadio(Element element, [MDCFoundation foundation, args]);

  external bool get checked;
  external void set checked(bool value);
  external bool get disabled;
  external void set disabled(bool value);
  external String get value;
  external void set value(String value);
}
