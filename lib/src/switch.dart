part of mdc_web;

/// A toggle switch control.
///
/// Javascript: `mdc.switchControl.MDCSwitch`.
///
/// See the [component reference](https://material.io/develop/web/components/input-controls/switches/#mdcswitch-properties-and-methods)
/// and [source code](https://github.com/material-components/material-components-web/tree/master/packages/mdc-switch/index.js).
@JS('switchControl.MDCSwitch')
abstract class MDCSwitch extends MDCComponent implements MDCSelectionControl {
  external static MDCSwitch attachTo(Element element);
  external factory MDCSwitch(Element element, [MDCFoundation foundation, args]);

  external bool get checked;
  external void set checked(bool value);
  external bool get disabled;
  external void set disabled(bool value);
}
