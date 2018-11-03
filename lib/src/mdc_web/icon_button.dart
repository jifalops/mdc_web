@JS('mdc.iconButton')
library iconButton;

import 'dart:html';
import 'package:js/js.dart';
import 'base.dart';
import 'ripple.dart';

/// Toggle between an on and off icon.
///
/// Javascript: `mdc.iconButton.MDCIconButtonToggle`.
///
/// * [Design Guidelines](https://material.io/design/components/buttons.html#toggle-button)
/// * [Component Reference](https://material.io/develop/web/components/buttons/icon-buttons/#mdciconbuttontoggle-properties-and-methods)
/// * [Demo](https://material-components.github.io/material-components-web-catalog/#/component/icon-button)
/// * [Source Code](https://github.com/material-components/material-components-web/blob/master/packages/mdc-icon-button/index.js)
class MDCIconButtonToggle extends MDCComponent {
  static MDCIconButtonToggle attachTo(Element root) =>
      MDCIconButtonToggle._attach(root);
  MDCIconButtonToggle._attach(Element root)
      : _js = IconButtonToggleComponent.attachTo(root);

  MDCIconButtonToggle(Element root, [foundation, args])
      : _js = _preserveUndefined(root, foundation, args);

  static IconButtonToggleComponent _preserveUndefined(Element root, foundation, args) =>
      foundation == null
          ? IconButtonToggleComponent(root)
          : args == null
              ? IconButtonToggleComponent(root, foundation)
              : IconButtonToggleComponent(root, foundation, args);

  IconButtonToggleComponent get js => _js;
  final IconButtonToggleComponent _js;

  /// Get/set the toggle state.
  bool get on => js.on;
  void set on(bool value) => js.on = value;

  MDCRipple get ripple => MDCRipple.fromComponent(js.ripple);

  /// Data structure: {"detail": {"isOn": boolean}}
  static const changeEvent = 'MDCIconButtonToggle:change';
}

@JS('MDCIconButtonToggle')
abstract class IconButtonToggleComponent extends Component {
  external static IconButtonToggleComponent attachTo(Element root);
  external factory IconButtonToggleComponent(Element root, [foundation, args]);

  /// Get/set the toggle state.
  bool on;

  external RippleComponent get ripple;
}
