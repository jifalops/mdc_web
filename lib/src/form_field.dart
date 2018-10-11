@JS('mdc.formField')
library mdc_web_form_field;

import 'dart:html';
import 'package:js/js.dart';
import 'base.dart';
import 'selection_control.dart';

/// MDC Form Field aligns an MDC Web form field (for example, a checkbox) with
/// its label and makes it RTL-aware. It also activates a ripple effect upon
/// interacting with the label.
///
/// Javascript: `mdc.formField.MDCFormField`.
///
/// * [Component Reference](https://material.io/develop/web/components/input-controls/form-fields/#mdcformfield-properties-and-methods)
/// * [Source Code](https://github.com/material-components/material-components-web/tree/master/packages/mdc-form-field/index.js.
@JS('MDCFormField')
abstract class FormField extends Component {
  external static FormField attachTo(Element element);
  external factory FormField(Element element,
      [Foundation foundation, args]);

  external SelectionControl get input;
  external void set input(SelectionControl value);
}
