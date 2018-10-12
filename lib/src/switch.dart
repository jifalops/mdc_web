part of mdc_web;

/// A toggle switch control.
///
/// Javascript: `mdc.switchControl.MDCSwitch`.
///
/// * [Design Guidelines](https://material.io/go/design-switches)
/// * [Component Reference](https://material.io/develop/web/components/input-controls/switches/#mdcswitch-properties-and-methods)
/// * [Demo](https://material-components.github.io/material-components-web-catalog/#/component/switch)
/// * [Source Code](https://github.com/material-components/material-components-web/tree/master/packages/mdc-switch/index.js)
class MDCSwitch extends MDCComponent<_Switch> implements MDCSelectionControl {
  static MDCSwitch attachTo(Element root) => MDCSwitch._attach(root);
  MDCSwitch._attach(Element root) : super._(_Switch.attachTo(root));

  MDCSwitch(Element root, [foundation, args])
      : super._(_preserveUndefined(root, foundation, args));

  static _Switch _preserveUndefined(Element root, foundation, args) =>
      foundation == null
          ? _Switch(root)
          : args == null
              ? _Switch(root, foundation)
              : _Switch(root, foundation, args);

  bool get checked => _js.checked;
  void set checked(bool value) => _js.checked = value;
  bool get disabled => _js.disabled;
  void set disabled(bool value) => _js.disabled = value;

  @override
  MDCRipple get ripple => MDCRipple._(_js.ripple);
}

@JS('switchControl.MDCSwitch')
abstract class _Switch extends _Component implements _SelectionControl {
  external static _Switch attachTo(Element root);
  external factory _Switch(Element root, [foundation, args]);

  external bool get checked;
  external void set checked(bool value);
  external bool get disabled;
  external void set disabled(bool value);
}
