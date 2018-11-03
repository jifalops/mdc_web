part of mdc_web;

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
  MDCSwitch._attach(Element root) : _js = _Switch.attachTo(root);

  MDCSwitch(Element root, [foundation, args])
      : _js = _preserveUndefined(root, foundation, args);

  static _Switch _preserveUndefined(Element root, foundation, args) =>
      foundation == null
          ? _Switch(root)
          : args == null
              ? _Switch(root, foundation)
              : _Switch(root, foundation, args);

  _Switch get js => _js;
  final _Switch _js;

  bool get checked => js.checked;
  void set checked(bool value) => js.checked = value;
  bool get disabled => js.disabled;
  void set disabled(bool value) => js.disabled = value;

  @override
  MDCRipple get ripple => MDCRipple._(js.ripple);
}

@JS('switchControl.MDCSwitch')
abstract class _Switch extends _Component implements _SelectionControl {
  external static _Switch attachTo(Element root);
  external factory _Switch(Element root, [foundation, args]);

  bool checked;
  bool disabled;
}
