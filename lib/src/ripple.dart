@JS('mdc.ripple')
library mdc_web_ripple;

import 'dart:html';
import 'package:js/js.dart';
import 'base.dart';

/// Material design surface ripples.
///
/// Javascript: `mdc.ripple.MDCRipple`.
///
/// See the [component reference](https://material.io/develop/web/components/ripples/#mdcripple)
/// and [source code](https://github.com/material-components/material-components-web/tree/master/packages/mdc-ripple/index.js).
@JS('MDCRipple')
abstract class Ripple extends Component {
  external static Ripple attachTo(Element element, [bool unbounded]);
  external factory Ripple(Element element, [Foundation foundation, args]);

  /// Surfaces for bounded ripples should have the overflow property set to
  /// hidden, while surfaces for unbounded ripples should have it set to visible.
  external bool get unbounded;
  external void set unbounded(bool value);
  external bool get disabled;
  external void set disabled(bool value);

  external void activate();
  external void deactivate();
  external void layout();

  external static dynamic createAdapter(Ripple ripple);
}
