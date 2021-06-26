@JS('mdc.floatingLabel')
library floating_label;

import 'dart:html';
import 'package:js/js.dart';
import 'base.dart';
import 'selection_control.dart';

/// Floating labels display the type of input a field requires.
///
/// Javascript: `mdc.floatingLabel.MDCFloatingLabel`.
///
/// * [Component Reference](https://material.io/develop/web/components/input-controls/floating-label/#mdcfloatinglabel-properties-and-methods)
/// * [Source Code](https://github.com/material-components/material-components-web/tree/master/packages/mdc-floating-label/index.js)
@JS('MDCFloatingLabel')
abstract class FloatingLabelComponent extends Component
    implements SelectionControlComponent {
  external static FloatingLabelComponent attachTo(Element root);
  external factory FloatingLabelComponent(Element root,
      [MDCFoundation? foundation, args]);

  external void shake(bool shouldShake);
  external void float(bool shouldFloat);
  external num getWidth();
}
