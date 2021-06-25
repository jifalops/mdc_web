@JS('mdc.radio')
library radio;

import 'dart:html';
import 'package:js/js.dart';
import 'base.dart';
import 'selection_control.dart';

/// Radio buttons select one item out of a list.
///
/// Javascript: `mdc.radio.MDCRadio`.
///
/// * [Design Guidelines](https://material.io/go/design-radio-buttons)
/// * [Component Reference](https://material.io/develop/web/components/input-controls/radio-buttons/#mdcradio-properties-and-methods)
/// * [Demo](https://material-components.github.io/material-components-web-catalog/#/component/radio)
/// * [Source Code](https://github.com/material-components/material-components-web/tree/master/packages/mdc-radio/index.js)
@JS('MDCRadio')
abstract class RadioComponent extends Component
    implements SelectionControlComponent {
  external static RadioComponent attachTo(Element root);
  external factory RadioComponent(Element root,
      [MDCFoundation? foundation, args]);

  bool? checked;
  bool? disabled;
  String? value;
}
