part of mdc_web;

/// A material design checkbox. To listen for changes use the native event.
///
/// Javascript: `mdc.checkbox.MDCCheckbox`.
///
/// See the [component reference](https://material.io/develop/web/components/input-controls/checkboxes/#mdccheckbox-properties-and-methods)
/// and [source code](https://github.com/material-components/material-components-web/tree/master/packages/mdc-checkbox/index.js).
@JS('checkbox.MDCCheckbox')
abstract class MDCCheckbox extends MDCComponent implements MDCSelectionControl {
  external static MDCCheckbox attachTo(Element element);
  external factory MDCCheckbox(Element element,
      [MDCFoundation foundation, args]);

  external bool get checked;
  external void set checked(bool value);
  external bool get indeterminate;
  external void set indeterminate(bool value);
  external bool get disabled;
  external void set disabled(bool value);
  external String get value;
  external void set value(String value);
}
