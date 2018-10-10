part of mdc_web;

/// MDC Form Field aligns an MDC Web form field (for example, a checkbox) with
/// its label and makes it RTL-aware. It also activates a ripple effect upon
/// interacting with the label.
///
/// Javascript: `mdc.formField.MDCFormField`.
///
/// See the [component reference](https://material.io/develop/web/components/input-controls/form-fields/#mdcformfield-properties-and-methods)
/// and [source code](https://github.com/material-components/material-components-web/tree/master/packages/mdc-form-field/index.js.
@JS('formField.MDCFormField')
abstract class MDCFormField extends MDCComponent {
  external static MDCFormField attachTo(Element element);
  external factory MDCFormField(Element element,
      [MDCFoundation foundation, args]);

  external MDCSelectionControl get input;
  external void set input(MDCSelectionControl value);
}
