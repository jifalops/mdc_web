@JS('mdc.lineRipple')
library line_ripple;

import 'dart:html';
import 'package:js/js.dart';
import 'base.dart';

/// The line ripple is used to highlight user-specified input above it. When a
/// line ripple is active, the line’s color and thickness changes.
///
/// Javascript: `mdc.lineRipple.MDCLineRipple`.
///
/// * [Component Reference](https://material.io/develop/web/components/input-controls/line-ripple/#mdclineripple-properties-and-methods)
/// * [Source Code](https://github.com/material-components/material-components-web/tree/master/packages/mdc-line-ripple/index.js)
@JS('MDCLineRipple')
abstract class LineRippleComponent extends Component {
  external static LineRippleComponent attachTo(Element root);
  external factory LineRippleComponent(Element root,
      [MDCFoundation? foundation, args]);

  external void activate();
  external void deactivate();
  external void setRippleCenter(num xCoordinate);
}
