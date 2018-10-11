@JS('mdc.floatingLabel')
library mdc_web_floating_label;

import 'dart:html';
import 'package:js/js.dart';
import 'base.dart';
import 'selection_control.dart';

/// Floating labels display the type of input a field requires.
///
/// Javascript: `mdc.floatingLabel.MDCFloatingLabel`.
///
/// See the [component reference](https://material.io/develop/web/components/input-controls/floating-label/#mdcfloatinglabel-properties-and-methods)
/// and [source code](https://github.com/material-components/material-components-web/tree/master/packages/mdc-floating-label/index.js).
@JS('MDCFloatingLabel')
abstract class FloatingLabel extends Component
    implements SelectionControl {
  external static FloatingLabel attachTo(Element element);
  external factory FloatingLabel(Element element,
      [Foundation foundation, args]);

  external void shake(bool shouldShake);
  external void float(bool shouldFloat);
  external num getWidth();
}
