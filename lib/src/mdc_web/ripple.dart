part of mdc_web;

/// Material design surface ripples.
///
/// Javascript: `mdc.ripple.MDCRipple`.
///
/// * [Design Guidelines](https://material.io/go/design-states)
/// * [Component Reference](https://material.io/develop/web/components/ripples/#mdcripple)
/// * [Demo](https://material-components.github.io/material-components-web-catalog/#/component/ripple)
/// * [Source Code](https://github.com/material-components/material-components-web/tree/master/packages/mdc-ripple/index.js)
class MDCRipple extends MDCComponent<_Ripple> {
  static MDCRipple attachTo(Element root, [bool unbounded]) =>
      MDCRipple._attach(root, unbounded);
  MDCRipple._attach(Element root, [bool unbounded])
      : super._(_preserveUndefinedAttach(root, unbounded));
  MDCRipple(Element root, [foundation, args])
      : super._(_preserveUndefined(root, foundation, args));

  /// For wrapping a [_Ripple].
  MDCRipple._(_Ripple ripple) : super._(ripple);

  static _Ripple _preserveUndefined(Element root, foundation, args) =>
      foundation == null
          ? _Ripple(root)
          : args == null
              ? _Ripple(root, foundation)
              : _Ripple(root, foundation, args);
  static _Ripple _preserveUndefinedAttach(Element root, bool unbounded) =>
      unbounded == null
          ? _Ripple.attachTo(root)
          : _Ripple.attachTo(root, unbounded);

  /// Surfaces for bounded ripples should have the overflow property set to
  /// hidden, while surfaces for unbounded ripples should have it set to visible.
  bool get unbounded => _js.unbounded;
  void set unbounded(bool value) => _js.unbounded = value;
  bool get disabled => _js.disabled;
  void set disabled(bool value) => _js.disabled = value;

  void activate() => _js.activate();
  void deactivate() => _js.deactivate();
  void layout() => _js.layout();

  static dynamic createAdapter(MDCRipple ripple) =>
      _Ripple.createAdapter(ripple._js);
}

@JS('ripple.MDCRipple')
abstract class _Ripple extends _Component {
  external static _Ripple attachTo(Element root, [bool unbounded]);
  external factory _Ripple(Element root, [foundation, args]);

  /// Surfaces for bounded ripples should have the overflow property set to
  /// hidden, while surfaces for unbounded ripples should have it set to visible.
  external bool get unbounded;
  external void set unbounded(bool value);
  external bool get disabled;
  external void set disabled(bool value);

  external void activate();
  external void deactivate();
  external void layout();

  external static createAdapter(_Ripple ripple);
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
