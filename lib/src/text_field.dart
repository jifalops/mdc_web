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

  MDCTextField(Element root, [MDCFoundation? foundation, args])
      : _js = _preserveUndefined(root, foundation, args);

  TextFieldComponent get js => _js;
  final TextFieldComponent _js;

  String? get value => js.value;
  set value(String? value) => js.value = value;
  bool? get disabled => js.disabled;
  set disabled(bool? value) => js.disabled = value;
  set useNativeValidation(bool value) => js.useNativeValidation = value;
  set helperTextContent(String value) => js.helperTextContent = value;
  set leadingIconAriaLabel(String value) => js.leadingIconAriaLabel = value;
  set trailingIconAriaLabel(String value) => js.trailingIconAriaLabel = value;
  set leadingIconContent(String value) => js.leadingIconContent = value;
  set trailingIconContent(String value) => js.trailingIconContent = value;
  set ripple(MDCRipple value) => js.ripple = value.js;
  bool? get valid => js.valid;
  set valid(bool? value) => js.valid = value;

  bool? get required => js.required;
  set required(bool? value) => js.required = value;
  int? get minLength => js.minLength;
  set minLength(int? value) => js.minLength = value;
  int? get maxLength => js.maxLength;
  set maxLength(int? value) => js.maxLength = value;
  String? get min => js.min;
  set min(String? value) => js.min = value;
  String? get max => js.max;
  set max(String? value) => js.max = value;
  String? get step => js.step;
  set step(String? value) => js.step = value;
  String? get pattern => js.pattern;
  set pattern(String? value) => js.pattern = value;

  void layout() => js.layout();

  @override
  MDCRipple get ripple => MDCRipple.fromComponent(js.ripple!);
}

TextFieldComponent _preserveUndefined(
        Element root, MDCFoundation? foundation, args) =>
    foundation == null
        ? TextFieldComponent(root)
        : args == null
            ? TextFieldComponent(root, foundation)
            : TextFieldComponent(root, foundation, args);
