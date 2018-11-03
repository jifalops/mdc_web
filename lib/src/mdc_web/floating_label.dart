@JS('mdc.floatingLabel')
library floatingLabel;

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
class MDCFloatingLabel extends MDCComponent implements MDCSelectionControl {
  static MDCFloatingLabel attachTo(Element root) =>
      MDCFloatingLabel._attach(root);
  MDCFloatingLabel._attach(Element root) : _js = FloatingLabelComponent.attachTo(root);

  MDCFloatingLabel(Element root, [foundation, args])
      : _js = _preserveUndefined(root, foundation, args);

  static FloatingLabelComponent _preserveUndefined(Element root, foundation, args) =>
      foundation == null
          ? FloatingLabelComponent(root)
          : args == null
              ? FloatingLabelComponent(root, foundation)
              : FloatingLabelComponent(root, foundation, args);

  FloatingLabelComponent get js => _js;
  final FloatingLabelComponent _js;

  void shake(bool shouldShake) => js.shake(shouldShake);
  void float(bool shouldFloat) => js.float(shouldFloat);
  num getWidth() => js.getWidth();

  @override
  MDCRipple get ripple => MDCRipple.fromComponent(js.ripple);
}

@JS('MDCFloatingLabel')
abstract class FloatingLabelComponent extends Component implements SelectionControlComponent {
  external static FloatingLabelComponent attachTo(Element root);
  external factory FloatingLabelComponent(Element root, [foundation, args]);

  external void shake(bool shouldShake);
  external void float(bool shouldFloat);
  external num getWidth();
}