
import 'base.dart';
import 'selection_control.dart';
import 'mdc_web/radio.dart';

/// Radio buttons select one item out of a list.
///
/// Javascript: `mdc.radio.MDCRadio`.
///
/// * [Design Guidelines](https://material.io/go/design-radio-buttons)
/// * [Component Reference](https://material.io/develop/web/components/input-controls/radio-buttons/#mdcradio-properties-and-methods)
/// * [Demo](https://material-components.github.io/material-components-web-catalog/#/component/radio)
/// * [Source Code](https://github.com/material-components/material-components-web/tree/master/packages/mdc-radio/index.js)
class MDCRadio extends MDCComponent implements MDCSelectionControl {
  static MDCRadio attachTo(Element root) => MDCRadio._attach(root);
  MDCRadio._attach(Element root) : _js = RadioComponent.attachTo(root);

  MDCRadio(Element root, [foundation, args])
      : _js = _preserveUndefined(root, foundation, args);

  static RadioComponent _preserveUndefined(Element root, foundation, args) =>
      foundation == null
          ? RadioComponent(root)
          : args == null
              ? RadioComponent(root, foundation)
              : RadioComponent(root, foundation, args);

  RadioComponent get js => _js;
  final RadioComponent _js;

  bool get checked => js.checked;
  void set checked(bool value) => js.checked = value;
  bool get disabled => js.disabled;
  void set disabled(bool value) => js.disabled = value;
  String get value => js.value;
  void set value(String value) => js.value = value;

  @override
  MDCRipple get ripple => MDCRipple.fromComponent(js.ripple);
}
