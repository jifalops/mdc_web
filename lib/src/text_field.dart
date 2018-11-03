
import 'base.dart';
import 'selection_control.dart';
import 'mdc_web/text_field.dart';

/// Text fields allow users to input, edit, and select text.
///
/// Javascript: `mdc.textField.MDCTextField`.
///
/// * [Design Guidelines](https://material.io/go/design-text-fields)
/// * [Component Reference](https://material.io/develop/web/components/input-controls/text-field/#mdctextfield-properties-and-methods)
/// * [Demo](https://material-components.github.io/material-components-web-catalog/#/component/text-field)
/// * [Source Code](https://github.com/material-components/material-components-web/tree/master/packages/mdc-textfield/index.js)
class MDCTextField extends MDCComponent implements MDCSelectionControl {
  static MDCTextField attachTo(Element root) => MDCTextField._attach(root);
  MDCTextField._attach(Element root) : _js = TextFieldComponent.attachTo(root);

  MDCTextField(Element root, [foundation, args])
      : _js = _preserveUndefined(root, foundation, args);

  static TextFieldComponent _preserveUndefined(Element root, foundation, args) =>
      foundation == null
          ? TextFieldComponent(root)
          : args == null
              ? TextFieldComponent(root, foundation)
              : TextFieldComponent(root, foundation, args);

  TextFieldComponent get js => _js;
  final TextFieldComponent _js;

  String get value => js.value;
  void set value(String value) => js.value = value;
  bool get disabled => js.disabled;
  void set disabled(bool value) => js.disabled = value;
  void set useNativeValidation(bool value) => js.useNativeValidation = value;
  void set helperTextContent(String value) => js.helperTextContent = value;
  void set leadingIconAriaLabel(String value) =>
      js.leadingIconAriaLabel = value;
  void set trailingIconAriaLabel(String value) =>
      js.trailingIconAriaLabel = value;
  void set leadingIconContent(String value) => js.leadingIconContent = value;
  void set trailingIconContent(String value) => js.trailingIconContent = value;
  void set ripple(MDCRipple value) => js.ripple = value.js;
  bool get valid => js.valid;
  void set valid(bool value) => js.valid = value;

  bool get required => js.required;
  void set required(bool value) => js.required = value;
  int get minLength => js.minLength;
  void set minLength(int value) => js.minLength = value;
  int get maxLength => js.maxLength;
  void set maxLength(int value) => js.maxLength = value;
  String get min => js.min;
  void set min(String value) => js.min = value;
  String get max => js.max;
  void set max(String value) => js.max = value;
  String get step => js.step;
  void set step(String value) => js.step = value;
  String get pattern => js.pattern;
  void set pattern(String value) => js.pattern = value;

  void layout() => js.layout();

  @override
  MDCRipple get ripple => MDCRipple.fromComponent(js.ripple);
}
