part of mdc_web;

/// A Tab Indicator is a visual guide that shows which Tab is active.
///
/// Javascript: `mdc.tabIndicator.MDCTabIndicator`.
///
/// See the [component reference](https://material.io/develop/web/components/tabs/indicator/#mdctabindicator-methods)
/// and [source code](https://github.com/material-components/material-components-web/blob/master/packages/mdc-tab-indicator/index.js).
@JS('tabIndicator.MDCTabIndicator')
abstract class MDCTabIndicator extends MDCComponent {
  external static MDCTabIndicator attachTo(Element element);
  external factory MDCTabIndicator(Element element,
      [MDCFoundation foundation, args]);

  /// [previousIndicatorClientRect] is a DOMRect. See also
  /// [computeIndicatorClientRect()].
  external void activate([/*DOMRect*/ previousIndicatorClientRect]);
  external void deactivate();

  /// Returns a DOMRect.
  external /*DOMRect*/ computeContentClientRect();
}
