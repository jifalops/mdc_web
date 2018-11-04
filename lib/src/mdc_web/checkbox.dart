@JS('mdc.checkbox')
library checkbox;

import 'dart:html';
import 'package:js/js.dart';
import 'base.dart';
import 'selection_control.dart';

/// A material design checkbox. To listen for changes, use the native event.
///
/// Javascript: `mdc.checkbox.MDCCheckbox`.
///
/// * [Design Guidelines](https://material.io/go/design-checkboxes)
/// * [Component Reference](https://material.io/develop/web/components/input-controls/checkboxes/#mdccheckbox-properties-and-methods)
/// * [Demo](https://material-components.github.io/material-components-web-catalog/#/component/checkbox)
/// * [Source Code](https://github.com/material-components/material-components-web/tree/master/packages/mdc-checkbox/index.js)
@JS('MDCCheckbox')
abstract class CheckboxComponent extends Component
    implements SelectionControlComponent {
  external static CheckboxComponent attachTo(Element root);
  external factory CheckboxComponent(Element root,
      [MDCFoundation foundation, args]);

  bool checked;
  bool indeterminate;
  bool disabled;
  String value;
}
