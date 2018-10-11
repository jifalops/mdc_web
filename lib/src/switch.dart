@JS('mdc.switchControl')
library mdc_web_switch_control;

import 'dart:html';
import 'package:js/js.dart';
import 'base.dart';
import 'selection_control.dart';

/// A toggle switch control.
///
/// Javascript: `mdc.switchControl.MDCSwitch`.
///
/// * [Design Guidelines](https://material.io/go/design-switches)
/// * [Component Reference](https://material.io/develop/web/components/input-controls/switches/#mdcswitch-properties-and-methods)
/// * [Demo](https://material-components.github.io/material-components-web-catalog/#/component/switch)
/// * [Source Code](https://github.com/material-components/material-components-web/tree/master/packages/mdc-switch/index.js)
@JS('MDCSwitch')
abstract class Switch extends Component implements SelectionControl {
  external static Switch attachTo(Element element);
  external factory Switch(Element element, [Foundation foundation, args]);

  external bool get checked;
  external void set checked(bool value);
  external bool get disabled;
  external void set disabled(bool value);
}
