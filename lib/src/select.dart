part of mdc_web;

/// A drop-down selection menu.
///
/// Javascript: `mdc.select.MDCSelect`.
///
/// * [Design Guidelines](https://material.io/go/design-text-fields)
/// * [Component Reference](https://material.io/develop/web/components/input-controls/select-menus/#mdcselect-api)
/// * [Demo](https://material-components.github.io/material-components-web-catalog/#/component/select)
/// * [Source Code](https://github.com/material-components/material-components-web/tree/master/packages/mdc-select/index.js)
class MDCSelect extends MDCComponent<_Select> implements MDCSelectionControl {
  static MDCSelect attachTo(Element root) => MDCSelect._attach(root);
  MDCSelect._attach(Element root) : super._(_Select.attachTo(root));

  MDCSelect(Element root, [foundation, args])
      : super._(_preserveUndefined(root, foundation, args));

  static _Select _preserveUndefined(Element root, foundation, args) =>
      foundation == null
          ? _Select(root)
          : args == null
              ? _Select(root, foundation)
              : _Select(root, foundation, args);

  bool get disabled => _js.disabled;
  void set disabled(bool value) => _js.disabled = value;
  String get value => _js.value;
  void set value(String value) => _js.value = value;

  /// Set to -1 if no option is currently selected.
  num get selectedIndex => _js.selectedIndex;
  void set selectedIndex(num value) => _js.selectedIndex = value;

  @override
  MDCRipple get ripple => MDCRipple._(_js.ripple);
}

@JS('select.MDCSelect')
abstract class _Select extends _Component implements _SelectionControl {
  external static _Select attachTo(Element root);
  external factory _Select(Element root, [foundation, args]);

  external bool get disabled;
  external void set disabled(bool value);
  external String get value;
  external void set value(String value);

  /// Set to -1 if no option is currently selected.
  external num get selectedIndex;
  external void set selectedIndex(num value);
}
