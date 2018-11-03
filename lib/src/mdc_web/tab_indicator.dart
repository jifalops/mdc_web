@JS('mdc.tabIndicator')
library tabIndicator;

import 'dart:html';
import 'package:js/js.dart';
import 'base.dart';

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
  MDCTabIndicator._attach(Element root) : _js = TabIndicatorComponent.attachTo(root);

  MDCTabIndicator(Element root, [foundation, args])
      : _js = _preserveUndefined(root, foundation, args);

  static TabIndicatorComponent _preserveUndefined(Element root, foundation, args) =>
      foundation == null
          ? TabIndicatorComponent(root)
          : args == null
              ? TabIndicatorComponent(root, foundation)
              : TabIndicatorComponent(root, foundation, args);

  TabIndicatorComponent get js => _js;
  final TabIndicatorComponent _js;

  /// [previousIndicatorClientRect] is a DOMRect. See also
  /// [computeIndicatorClientRect()].
  void activate([/*DOMRect*/ previousIndicatorClientRect]) =>
      js.activate(previousIndicatorClientRect);
  void deactivate() => js.deactivate();

  /// Returns a DOMRect.
  /*DOMRect*/ computeContentClientRect() => js.computeContentClientRect();
}

@JS('MDCTabIndicator')
abstract class TabIndicatorComponent extends Component {
  external static TabIndicatorComponent attachTo(Element root);
  external factory TabIndicatorComponent(Element root, [foundation, args]);

  /// [previousIndicatorClientRect] is a DOMRect. See also
  /// [computeIndicatorClientRect()].
  external void activate([/*DOMRect*/ previousIndicatorClientRect]);
  external void deactivate();

  /// Returns a DOMRect.
  external /*DOMRect*/ computeContentClientRect();
}
