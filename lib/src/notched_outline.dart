part of mdc_web;

/// The notched outline is a border around all sides of either a Text Field or
/// Select component. This is used for the Outlined variant of either a Text
/// Field or Select.
///
/// Javascript: `mdc.notchedOutline.MDCNotchedOutline`.
///
/// See the [component reference](https://material.io/develop/web/components/input-controls/notched-outline/#mdcnotchedoutline-properties-and-methods)
/// and [source code](https://github.com/material-components/material-components-web/tree/master/packages/mdc-notched-outline/index.js).
@JS('notchedOutline.MDCNotchedOutline')
abstract class MDCNotchedOutline {
  external static MDCNotchedOutline attachTo(Element element);
  external factory MDCNotchedOutline(Element element,
      [MDCFoundation foundation, args]);

  external void notch(num notchWidth, bool isRtl);
  external void closeNotch();
}
