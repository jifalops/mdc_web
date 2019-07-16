import 'base.dart';
import 'selection_control.dart';
import 'mdc_web/switch.dart';

/// A toggle switch control.
///
/// Javascript: `mdc.switchControl.MDCSwitch`.
///
/// * [Design Guidelines](https://material.io/go/design-switches)
/// * [Component Reference](https://material.io/develop/web/components/input-controls/switches/#mdcswitch-properties-and-methods)
/// * [Demo](https://material-components.github.io/material-components-web-catalog/#/component/switch)
/// * [Source Code](https://github.com/material-components/material-components-web/tree/master/packages/mdc-switch/index.js)
class MDCSwitch extends MDCComponent implements MDCSelectionControl {
  static MDCSwitch attachTo(Element root) => MDCSwitch._attach(root);
  MDCSwitch._attach(Element root) : _js = SwitchComponent.attachTo(root);

  MDCSwitch(Element root, [MDCFoundation foundation, args])
      : _js = _preserveUndefined(root, foundation, args);

  SwitchComponent get js => _js;
  final SwitchComponent _js;

  bool get checked => js.checked;
  set  checked(bool value) => js.checked = value;
  bool get disabled => js.disabled;
  set  disabled(bool value) => js.disabled = value;

  @override
  MDCRipple get ripple => MDCRipple.fromComponent(js.ripple);
}

SwitchComponent _preserveUndefined(
        Element root, MDCFoundation foundation, args) =>
    foundation == null
        ? SwitchComponent(root)
        : args == null
            ? SwitchComponent(root, foundation)
            : SwitchComponent(root, foundation, args);
