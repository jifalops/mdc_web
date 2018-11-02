part of mdc_web;

/// A material design checkbox. To listen for changes, use the native event.
///
/// Javascript: `mdc.checkbox.MDCCheckbox`.
///
/// * [Design Guidelines](https://material.io/go/design-checkboxes)
/// * [Component Reference](https://material.io/develop/web/components/input-controls/checkboxes/#mdccheckbox-properties-and-methods)
/// * [Demo](https://material-components.github.io/material-components-web-catalog/#/component/checkbox)
/// * [Source Code](https://github.com/material-components/material-components-web/tree/master/packages/mdc-checkbox/index.js)
class MDCCheckbox extends MDCComponent<_Checkbox>
    implements MDCSelectionControl, _Checkbox {
  static MDCCheckbox attachTo(Element root) => MDCCheckbox._attach(root);
  MDCCheckbox._attach(Element root) : super._(_Checkbox.attachTo(root));
  MDCCheckbox(Element root, [foundation, args])
      : super._(_preserveUndefined(root, foundation, args));

  static _Checkbox _preserveUndefined(Element root, foundation, args) =>
      foundation == null
          ? _Checkbox(root)
          : args == null
              ? _Checkbox(root, foundation)
              : _Checkbox(root, foundation, args);

  bool get checked => _js.checked;
  void set checked(bool value) => _js.checked = value;
  bool get indeterminate => _js.indeterminate;
  void set indeterminate(bool value) => _js.indeterminate = value;
  bool get disabled => _js.disabled;
  void set disabled(bool value) => _js.disabled = value;
  String get value => _js.value;
  void set value(String value) => _js.value = value;
  @override
  MDCRipple get ripple => MDCRipple._(_js.ripple);
}

@JS('checkbox.MDCCheckbox')
class _Checkbox extends _Component with _SelectionControl {
  external static _Checkbox attachTo(Element root);
  external factory _Checkbox(Element root, [foundation, args]);

  external bool get checked;
  external void set checked(bool value);
  external bool get indeterminate;
  external void set indeterminate(bool value);
  external bool get disabled;
  external void set disabled(bool value);
  external String get value;
  external void set value(String value);
}
