@JS('mdc.formField')
library form_field;

import 'dart:html';
import 'package:js/js.dart';
import 'base.dart';

/// MDC Form Field aligns an MDC Web form field (for example, a checkbox) with
/// its label and makes it RTL-aware. It also activates a ripple effect upon
/// interacting with the label.
///
/// Javascript: `mdc.formField.MDCFormField`.
///
/// * [Component Reference](https://material.io/develop/web/components/input-controls/form-fields/#mdcformfield-properties-and-methods)
/// * [Source Code](https://github.com/material-components/material-components-web/tree/master/packages/mdc-form-field/index.js.
@JS('MDCFormField')
abstract class FormFieldComponent extends Component {
  external static FormFieldComponent attachTo(Element root);
  external factory FormFieldComponent(Element? root,
      [MDCFoundation? foundation, args]);

  dynamic /*SelectionControlComponent*/ input;
}
