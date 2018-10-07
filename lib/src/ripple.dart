part of mdc_web;

/// Material design surface ripples.
///
/// Javascript: `mdc.ripple.MDCRipple`.
///
/// See the [component reference](https://material.io/develop/web/components/ripples/#mdcripple)
/// and [source code](https://github.com/material-components/material-components-web/tree/master/packages/mdc-ripple/index.js).
@JS('ripple.MDCRipple')
abstract class MDCRipple extends MDCComponent {
  external factory MDCRipple(Element element, [MDCFoundation foundation, args]);
  external static MDCRipple attachTo(Element element, [bool unbounded]);

  /// Surfaces for bounded ripples should have the overflow property set to
  /// hidden, while surfaces for unbounded ripples should have it set to visible.
  external bool get unbounded;
  external void set unbounded(bool value);
  external bool get disabled;
  external void set disabled(bool value);

  external void activate();
  external void deactivate();
  external void layout();

  external static Object createAdapter(MDCRipple ripple);
}
