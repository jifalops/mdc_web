part of mdc_web;

/// Text fields allow users to input, edit, and select text.
///
/// Javascript: `mdc.textField.MDCTextField`.
///
/// See the [component reference](https://material.io/develop/web/components/input-controls/text-field/#mdctextfield-properties-and-methods)
/// and [source code](https://github.com/material-components/material-components-web/tree/master/packages/mdc-textfield/index.js).
@JS('textField.MDCTextField')
abstract class MDCTextField extends MDCComponent
    implements MDCSelectionControl {
  external static MDCTextField attachTo(Element element);
  external factory MDCTextField(Element element,
      [MDCFoundation foundation, args]);

  external String get value;
  external void set value(String value);
  external bool get disabled;
  external void set disabled(bool value);
  external void set useNativeValidation(bool value);
  external void set helperTextContent(String value);
  external void set leadingIconAriaLabel(String value);
  external void set trailingIconAriaLabel(String value);
  external void set leadingIconContent(String value);
  external void set trailingIconContent(String value);
  external void set ripple(MDCRipple value);
  external bool get valid;
  external void set valid(bool value);

  external bool get required;
  external void set required(bool value);
  external num get minLength;
  external void set minLength(num value);
  external num get maxLength;
  external void set maxLength(num value);
  external String get min;
  external void set min(String value);
  external String get max;
  external void set max(String value);
  external String get step;
  external void set step(String value);
  external String get pattern;
  external void set pattern(String value);

  external void layout();
}

/// Omitting `mdc.textField.MDCTextFieldHelperText` and
/// `mdc.textField.MDCTextFieldIcon` because they only expose their foundation,
/// and this library currently only implements the base foundation, not the
/// foundations of components.
