@JS('mdc.switchControl')
library switch_control;

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
abstract class SwitchComponent extends Component
    implements SelectionControlComponent {
  external static SwitchComponent attachTo(Element root);
  external factory SwitchComponent(Element? root,
      [MDCFoundation? foundation, args]);

  bool? checked;
  bool? disabled;
}
