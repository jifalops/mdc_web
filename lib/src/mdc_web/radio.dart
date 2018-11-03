part of mdc_web;

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
  MDCRadio._attach(Element root) : _js = _Radio.attachTo(root);

  MDCRadio(Element root, [foundation, args])
      : _js = _preserveUndefined(root, foundation, args);

  static _Radio _preserveUndefined(Element root, foundation, args) =>
      foundation == null
          ? _Radio(root)
          : args == null
              ? _Radio(root, foundation)
              : _Radio(root, foundation, args);

  _Radio get js => _js;
  final _Radio _js;

  bool get checked => js.checked;
  void set checked(bool value) => js.checked = value;
  bool get disabled => js.disabled;
  void set disabled(bool value) => js.disabled = value;
  String get value => js.value;
  void set value(String value) => js.value = value;

  @override
  MDCRipple get ripple => MDCRipple._(js.ripple);
}

@JS('radio.MDCRadio')
abstract class _Radio extends _Component implements _SelectionControl {
  external static _Radio attachTo(Element root);
  external factory _Radio(Element root, [foundation, args]);

  bool checked;
  bool disabled;
  String value;
}
