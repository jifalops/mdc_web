part of mdc_web;

/// Text fields allow users to input, edit, and select text.
///
/// Javascript: `mdc.textField.MDCTextField`.
///
/// * [Design Guidelines](https://material.io/go/design-text-fields)
/// * [Component Reference](https://material.io/develop/web/components/input-controls/text-field/#mdctextfield-properties-and-methods)
/// * [Demo](https://material-components.github.io/material-components-web-catalog/#/component/text-field)
/// * [Source Code](https://github.com/material-components/material-components-web/tree/master/packages/mdc-textfield/index.js)
class MDCTextField extends MDCComponent<_TextField>
    implements MDCSelectionControl {
  static MDCTextField attachTo(Element root) => MDCTextField._attach(root);
  MDCTextField._attach(Element root) : super._(_TextField.attachTo(root));

  MDCTextField(Element root, [foundation, args])
      : super._(_preserveUndefined(root, foundation, args));

  static _TextField _preserveUndefined(Element root, foundation, args) =>
      foundation == null
          ? _TextField(root)
          : args == null
              ? _TextField(root, foundation)
              : _TextField(root, foundation, args);

  String get value => _js.value;
  void set value(String value) => _js.value = value;
  bool get disabled => _js.disabled;
  void set disabled(bool value) => _js.disabled = value;
  void set useNativeValidation(bool value) => _js.useNativeValidation = value;
  void set helperTextContent(String value) => _js.helperTextContent = value;
  void set leadingIconAriaLabel(String value) =>
      _js.leadingIconAriaLabel = value;
  void set trailingIconAriaLabel(String value) =>
      _js.trailingIconAriaLabel = value;
  void set leadingIconContent(String value) => _js.leadingIconContent = value;
  void set trailingIconContent(String value) => _js.trailingIconContent = value;
  void set ripple(MDCRipple value) => _js.ripple = value._js;
  bool get valid => _js.valid;
  void set valid(bool value) => _js.valid = value;

  bool get required => _js.required;
  void set required(bool value) => _js.required = value;
  num get minLength => _js.minLength;
  void set minLength(num value) => _js.minLength = value;
  num get maxLength => _js.maxLength;
  void set maxLength(num value) => _js.maxLength = value;
  String get min => _js.min;
  void set min(String value) => _js.min = value;
  String get max => _js.max;
  void set max(String value) => _js.max = value;
  String get step => _js.step;
  void set step(String value) => _js.step = value;
  String get pattern => _js.pattern;
  void set pattern(String value) => _js.pattern = value;

  void layout() => _js.layout();

  @override
  MDCRipple get ripple => MDCRipple._(_js.ripple);
}

@JS('textField.MDCTextField')
abstract class _TextField extends _Component implements _SelectionControl {
  external static _TextField attachTo(Element root);
  external factory _TextField(Element root, [foundation, args]);

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
  external void set ripple(_Ripple value);
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
