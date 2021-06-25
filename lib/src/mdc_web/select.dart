@JS('mdc.select')
library select;

import 'dart:html';
import 'package:js/js.dart';
import 'base.dart';
import 'selection_control.dart';

/// A drop-down selection menu.
///
/// Javascript: `mdc.select.MDCSelect`.
///
/// * [Design Guidelines](https://material.io/go/design-text-fields)
/// * [Component Reference](https://material.io/develop/web/components/input-controls/select-menus/#mdcselect-api)
/// * [Demo](https://material-components.github.io/material-components-web-catalog/#/component/select)
/// * [Source Code](https://github.com/material-components/material-components-web/tree/master/packages/mdc-select/index.js)
@JS('MDCSelect')
abstract class SelectComponent extends Component
    implements SelectionControlComponent {
  external static SelectComponent attachTo(Element root);
  external factory SelectComponent(Element root,
      [MDCFoundation? foundation, args]);

  bool disabled;
  String value;

  /// Set to -1 if no option is currently selected.
  int selectedIndex;
}
