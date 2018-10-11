@JS('mdc.iconButton')
library mdc_web_icon_button;

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
/// * [Source Code](https://github.com/material-components/material-components-web/tree/master/packages/mdc-icon-button).
@JS('MDCIconButtonToggle')
abstract class IconButtonToggle extends Component {
  external static IconButtonToggle attachTo(Element element);
  external factory IconButtonToggle(Element element,
      [Foundation foundation, args]);

  /// Get/set the toggle state.
  external bool get on;
  external void set on(bool value);

  external Ripple get ripple;
}

/// [IconButtonToggle] events and helpers.
class iconButtonToggle {
  /// Data structure: {"detail": {"isOn": boolean}}
  static const changeEvent = 'MDCIconButtonToggle:change';
}
