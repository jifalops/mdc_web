part of mdc_web;

/// The `mdc.ripple.MDCRipple` Javascript class.
///
/// See the [component reference](https://material.io/develop/web/components/ripples/#mdcripple)
/// and [source code](https://github.com/material-components/material-components-web/tree/master/packages/mdc-ripple).
@JS('ripple.MDCRipple')
abstract class MDCRipple extends MDCComponent {
  external factory MDCRipple(Element element, [MDCFoundation foundation, args]);

  external bool get unbounded;
  external void set unbounded(value);
   external bool get disabled;
  external void set disabled(value);
  external void activate();
  external void deactivate();
  external void layout();

  external static MDCRipple attachTo(Element element, [bool unbounded]);
  external static Object createAdapter(MDCRipple ripple);
}
