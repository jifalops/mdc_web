part of mdc_web;

/// Radio buttons select one item out of a list.
///
/// Javascript: `mdc.radio.MDCRadio`.
///
/// * [Design Guidelines](https://material.io/go/design-radio-buttons)
/// * [Component Reference](https://material.io/develop/web/components/input-controls/radio-buttons/#mdcradio-properties-and-methods)
/// * [Demo](https://material-components.github.io/material-components-web-catalog/#/component/radio)
/// * [Source Code](https://github.com/material-components/material-components-web/tree/master/packages/mdc-radio/index.js)
class MDCRadio extends MDCComponent<_Radio> implements MDCSelectionControl {
  static MDCRadio attachTo(Element root) => MDCRadio._attach(root);
  MDCRadio._attach(Element root) : super._(_Radio.attachTo(root));

  MDCRadio(Element root, [foundation, args])
      : super._(_preserveUndefined(root, foundation, args));

  static _Radio _preserveUndefined(Element root, foundation, args) =>
      foundation == null
          ? _Radio(root)
          : args == null
              ? _Radio(root, foundation)
              : _Radio(root, foundation, args);

  bool get checked => _js.checked;
  void set checked(bool value) => _js.checked = value;
  bool get disabled => _js.disabled;
  void set disabled(bool value) => _js.disabled = value;
  String get value => _js.value;
  void set value(String value) => _js.value = value;

  @override
  MDCRipple get ripple => MDCRipple._(_js.ripple);
}

@JS('radio.MDCRadio')
abstract class _Radio extends _Component implements _SelectionControl {
  external static _Radio attachTo(Element root);
  external factory _Radio(Element root, [foundation, args]);

  bool checked;
  bool disabled;
  String value;
}
