@JS('mdc.ripple')
library ripple;

import 'dart:html';
import 'package:js/js.dart';
import 'base.dart';

/// Material design surface ripples.
///
/// Javascript: `mdc.ripple.MDCRipple`.
///
/// * [Design Guidelines](https://material.io/go/design-states)
/// * [Component Reference](https://material.io/develop/web/components/ripples/#mdcripple)
/// * [Demo](https://material-components.github.io/material-components-web-catalog/#/component/ripple)
/// * [Source Code](https://github.com/material-components/material-components-web/tree/master/packages/mdc-ripple/index.js)
@JS('MDCRipple')
abstract class RippleComponent extends Component {
  external static RippleComponent attachTo(Element root, [bool unbounded]);
  external factory RippleComponent(Element root, [foundation, args]);

  /// Surfaces for bounded ripples should have the overflow property set to
  /// hidden, while surfaces for unbounded ripples should have it set to visible.
  bool unbounded;
  bool disabled;

  external void activate();
  external void deactivate();
  external void layout();

  external static createAdapter(RippleComponent ripple);
}

// @JS('ripple.RippleCapableSurface')
// abstract class RippleCapableSurface {
//   external Element get root_;
//   external void set root_(Element value);
//   external bool get unbounded;
//   external void set unbounded(bool value);
//   external bool get disabled;
//   external void set disabled(bool value);
// }
