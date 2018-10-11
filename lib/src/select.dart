@JS('mdc.select')
library mdc_web_select;

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
abstract class Select extends Component implements SelectionControl {
  external static Select attachTo(Element element);
  external factory Select(Element element, [Foundation foundation, args]);

  external bool get disabled;
  external void set disabled(bool value);
  external String get value;
  external void set value(String value);

  /// Set to -1 if no option is currently selected.
  external num get selectedIndex;
  external void set selectedIndex(num value);
}
