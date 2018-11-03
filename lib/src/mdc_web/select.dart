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
class MDCSelect extends MDCComponent implements MDCSelectionControl {
  static MDCSelect attachTo(Element root) => MDCSelect._attach(root);
  MDCSelect._attach(Element root) : _js = SelectComponent.attachTo(root);

  MDCSelect(Element root, [foundation, args])
      : _js = _preserveUndefined(root, foundation, args);

  static SelectComponent _preserveUndefined(Element root, foundation, args) =>
      foundation == null
          ? SelectComponent(root)
          : args == null
              ? SelectComponent(root, foundation)
              : SelectComponent(root, foundation, args);

  SelectComponent get js => _js;
  final SelectComponent _js;

  bool get disabled => js.disabled;
  void set disabled(bool value) => js.disabled = value;
  String get value => js.value;
  void set value(String value) => js.value = value;

  /// Set to -1 if no option is currently selected.
  int get selectedIndex => js.selectedIndex;
  void set selectedIndex(int value) => js.selectedIndex = value;

  @override
  MDCRipple get ripple => MDCRipple.fromComponent(js.ripple);
}

@JS('MDCSelect')
abstract class SelectComponent extends Component implements SelectionControlComponent {
  external static SelectComponent attachTo(Element root);
  external factory SelectComponent(Element root, [foundation, args]);

  bool disabled;
  String value;

  /// Set to -1 if no option is currently selected.
  int selectedIndex;
}
