import 'base.dart';
import 'mdc_web/line_ripple.dart';

/// The line ripple is used to highlight user-specified input above it. When a
/// line ripple is active, the line’s color and thickness changes.
///
/// Javascript: `mdc.lineRipple.MDCLineRipple`.
///
/// * [Component Reference](https://material.io/develop/web/components/input-controls/line-ripple/#mdclineripple-properties-and-methods)
/// * [Source Code](https://github.com/material-components/material-components-web/tree/master/packages/mdc-line-ripple/index.js)
class MDCLineRipple extends MDCComponent {
  static MDCLineRipple attachTo(Element root) => MDCLineRipple._attach(root);
  MDCLineRipple._attach(Element root)
      : _js = LineRippleComponent.attachTo(root);

  MDCLineRipple(Element root, [MDCFoundation? foundation, args])
      : _js = _preserveUndefined(root, foundation, args);

  LineRippleComponent get js => _js;
  final LineRippleComponent _js;

  void activate() => js.activate();
  void deactivate() => js.deactivate();
  void setRippleCenter(num xCoordinate) => js.setRippleCenter(xCoordinate);
}

LineRippleComponent _preserveUndefined(
        Element root, MDCFoundation? foundation, args) =>
    foundation == null
        ? LineRippleComponent(root)
        : args == null
            ? LineRippleComponent(root, foundation)
            : LineRippleComponent(root, foundation, args);
