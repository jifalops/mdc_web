part of mdc_web;

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
  MDCSelect._attach(Element root) : _js = _Select.attachTo(root);

  MDCSelect(Element root, [foundation, args])
      : _js = _preserveUndefined(root, foundation, args);

  static _Select _preserveUndefined(Element root, foundation, args) =>
      foundation == null
          ? _Select(root)
          : args == null
              ? _Select(root, foundation)
              : _Select(root, foundation, args);

  _Select get js => _js;
  final _Select _js;

  bool get disabled => js.disabled;
  void set disabled(bool value) => js.disabled = value;
  String get value => js.value;
  void set value(String value) => js.value = value;

  /// Set to -1 if no option is currently selected.
  int get selectedIndex => js.selectedIndex;
  void set selectedIndex(int value) => js.selectedIndex = value;

  @override
  MDCRipple get ripple => MDCRipple._(js.ripple);
}

@JS('select.MDCSelect')
abstract class _Select extends _Component implements _SelectionControl {
  external static _Select attachTo(Element root);
  external factory _Select(Element root, [foundation, args]);

  bool disabled;
  String value;

  /// Set to -1 if no option is currently selected.
  int selectedIndex;
}
