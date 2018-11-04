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
@JS('MDCIconButtonToggle')
abstract class IconButtonToggleComponent extends Component {
  external static IconButtonToggleComponent attachTo(Element root);
  external factory IconButtonToggleComponent(Element root,
      [MDCFoundation foundation, args]);

  /// Get/set the toggle state.
  bool on;

  external RippleComponent get ripple;
}
