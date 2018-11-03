part of mdc_web;

/// Toggle between an on and off icon.
///
/// Javascript: `mdc.iconButton.MDCIconButtonToggle`.
///
/// * [Design Guidelines](https://material.io/design/components/buttons.html#toggle-button)
/// * [Component Reference](https://material.io/develop/web/components/buttons/icon-buttons/#mdciconbuttontoggle-properties-and-methods)
/// * [Demo](https://material-components.github.io/material-components-web-catalog/#/component/icon-button)
/// * [Source Code](https://github.com/material-components/material-components-web/blob/master/packages/mdc-icon-button/index.js)
class MDCIconButtonToggle extends MDCComponent<_IconButtonToggle> {
  static MDCIconButtonToggle attachTo(Element root) =>
      MDCIconButtonToggle._attach(root);
  MDCIconButtonToggle._attach(Element root)
      : super._(_IconButtonToggle.attachTo(root));

  MDCIconButtonToggle(Element root, [foundation, args])
      : super._(_preserveUndefined(root, foundation, args));

  static _IconButtonToggle _preserveUndefined(Element root, foundation, args) =>
      foundation == null
          ? _IconButtonToggle(root)
          : args == null
              ? _IconButtonToggle(root, foundation)
              : _IconButtonToggle(root, foundation, args);

  /// Get/set the toggle state.
  bool get on => _js.on;
  void set on(bool value) => _js.on = value;

  MDCRipple get ripple => MDCRipple._(_js.ripple);

  /// Data structure: {"detail": {"isOn": boolean}}
  static const changeEvent = 'MDCIconButtonToggle:change';
}

@JS('iconButton.MDCIconButtonToggle')
abstract class _IconButtonToggle extends _Component {
  external static _IconButtonToggle attachTo(Element root);
  external factory _IconButtonToggle(Element root, [foundation, args]);

  /// Get/set the toggle state.
  bool on;

  external _Ripple get ripple;
}
