part of mdc_web;

/// A Tab Indicator is a visual guide that shows which Tab is active.
///
/// Javascript: `mdc.tabIndicator.MDCTabIndicator`.
///
/// * [Design Guidelines](https://material.io/go/design-tabs)
/// * [Component Reference](https://material.io/develop/web/components/tabs/indicator/#mdctabindicator-methods)
/// * [Demo](https://material-components.github.io/material-components-web-catalog/#/component/tabs)
/// * [Source Code](https://github.com/material-components/material-components-web/blob/master/packages/mdc-tab-indicator/index.js)
class MDCTabIndicator extends MDCComponent {
  static MDCTabIndicator attachTo(Element root) =>
      MDCTabIndicator._attach(root);
  MDCTabIndicator._attach(Element root) : _js = _TabIndicator.attachTo(root);

  MDCTabIndicator(Element root, [foundation, args])
      : _js = _preserveUndefined(root, foundation, args);

  static _TabIndicator _preserveUndefined(Element root, foundation, args) =>
      foundation == null
          ? _TabIndicator(root)
          : args == null
              ? _TabIndicator(root, foundation)
              : _TabIndicator(root, foundation, args);

  _TabIndicator get js => _js;
  final _TabIndicator _js;

  /// [previousIndicatorClientRect] is a DOMRect. See also
  /// [computeIndicatorClientRect()].
  void activate([/*DOMRect*/ previousIndicatorClientRect]) =>
      js.activate(previousIndicatorClientRect);
  void deactivate() => js.deactivate();

  /// Returns a DOMRect.
  /*DOMRect*/ computeContentClientRect() => js.computeContentClientRect();
}

@JS('tabIndicator.MDCTabIndicator')
abstract class _TabIndicator extends _Component {
  external static _TabIndicator attachTo(Element root);
  external factory _TabIndicator(Element root, [foundation, args]);

  /// [previousIndicatorClientRect] is a DOMRect. See also
  /// [computeIndicatorClientRect()].
  external void activate([/*DOMRect*/ previousIndicatorClientRect]);
  external void deactivate();

  /// Returns a DOMRect.
  external /*DOMRect*/ computeContentClientRect();
}
