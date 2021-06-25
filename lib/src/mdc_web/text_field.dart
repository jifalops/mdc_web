@JS('mdc.textField')
library text_field;

import 'dart:html';
import 'package:js/js.dart';
import 'base.dart';
import 'selection_control.dart';

/// Text fields allow users to input, edit, and select text.
///
/// Javascript: `mdc.textField.MDCTextField`.
///
/// * [Design Guidelines](https://material.io/go/design-text-fields)
/// * [Component Reference](https://material.io/develop/web/components/input-controls/text-field/#mdctextfield-properties-and-methods)
/// * [Demo](https://material-components.github.io/material-components-web-catalog/#/component/text-field)
/// * [Source Code](https://github.com/material-components/material-components-web/tree/master/packages/mdc-textfield/index.js)
@JS('MDCTextField')
abstract class TextFieldComponent extends Component
    implements SelectionControlComponent {
  external static TextFieldComponent attachTo(Element root);
  external factory TextFieldComponent(Element root,
      [MDCFoundation? foundation, args]);

  String value;
  bool disabled;
  bool valid;
  RippleComponent ripple;
  bool required;
  int minLength;
  int maxLength;
  String min;
  String max;
  String step;
  String pattern;

  external set useNativeValidation(bool value);
  external set helperTextContent(String value);
  external set leadingIconAriaLabel(String value);
  external set trailingIconAriaLabel(String value);
  external set leadingIconContent(String value);
  external set trailingIconContent(String value);

  external void layout();
}

/// Omitting `mdc.textField.MDCTextFieldHelperText` and
/// `mdc.textField.MDCTextFieldIcon` because they only expose their foundation,
/// and this library currently only implements the base foundation, not the
/// foundations of components.
