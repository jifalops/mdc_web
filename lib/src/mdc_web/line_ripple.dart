part of mdc_web;

/// The line ripple is used to highlight user-specified input above it. When a
/// line ripple is active, the line’s color and thickness changes.
///
/// Javascript: `mdc.lineRipple.MDCLineRipple`.
///
/// * [Component Reference](https://material.io/develop/web/components/input-controls/line-ripple/#mdclineripple-properties-and-methods)
/// * [Source Code](https://github.com/material-components/material-components-web/tree/master/packages/mdc-line-ripple/index.js)
class MDCLineRipple extends MDCComponent {
  static MDCLineRipple attachTo(Element root) => MDCLineRipple._attach(root);
  MDCLineRipple._attach(Element root) : _js = _LineRipple.attachTo(root);

  MDCLineRipple(Element root, [foundation, args])
      : _js = _preserveUndefined(root, foundation, args);

  static _LineRipple _preserveUndefined(Element root, foundation, args) =>
      foundation == null
          ? _LineRipple(root)
          : args == null
              ? _LineRipple(root, foundation)
              : _LineRipple(root, foundation, args);

  _LineRipple get js => _js;
  final _LineRipple _js;

  void activate() => js.activate();
  void deactivate() => js.deactivate();
  void setRippleCenter(num xCoordinate) => js.setRippleCenter(xCoordinate);
}

@JS('lineRipple.MDCLineRipple')
abstract class _LineRipple extends _Component {
  external static _LineRipple attachTo(Element root);
  external factory _LineRipple(Element root, [foundation, args]);

  external void activate();
  external void deactivate();
  external void setRippleCenter(num xCoordinate);
}
