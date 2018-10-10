part of mdc_web;

/// Floating labels display the type of input a field requires.
///
/// Javascript: `mdc.floatingLabel.MDCFloatingLabel`.
///
/// See the [component reference](https://material.io/develop/web/components/input-controls/floating-label/#mdcfloatinglabel-properties-and-methods)
/// and [source code](https://github.com/material-components/material-components-web/tree/master/packages/mdc-floating-label/index.js).
@JS('floatingLabel.MDCFloatingLabel')
abstract class MDCFloatingLabel extends MDCComponent
    implements MDCSelectionControl {
  external static MDCFloatingLabel attachTo(Element element);
  external factory MDCFloatingLabel(Element element,
      [MDCFoundation foundation, args]);

  external void shake(bool shouldShake);
  external void float(bool shouldFloat);
  external num getWidth();
}
