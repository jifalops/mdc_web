@JS('mdc.tab')
library mdc_web_tab;

import 'dart:html';
import 'package:js/js.dart';
import 'base.dart';

/// A tab governs the visibility of one group of content.
///
/// Javascript: `mdc.tab.MDCTab`.
///
/// * [Design Guidelines](https://material.io/go/design-tabs)
/// * [Component Reference](https://material.io/develop/web/components/tabs/tab/#mdctab-properties-and-methods)
/// * [Demo](https://material-components.github.io/material-components-web-catalog/#/component/tabs)
/// * [Source Code](https://github.com/material-components/material-components-web/blob/master/packages/mdc-tab/index.js)
@JS('MDCTab')
abstract class Tab extends Component {
  external static Tab attachTo(Element element);
  external factory Tab(Element element, [Foundation foundation, args]);

  external bool get active;

  /// [previousIndicatorClientRect] is a DOMRect. See also
  /// [computeIndicatorClientRect()].
  external void activate([/*DOMRect*/ previousIndicatorClientRect]);
  external void deactivate();
  external void focus();

  /// Returns a DOMRect.
  external /*DOMRect*/ computeIndicatorClientRect();

  /// {rootLeft: number, rootRight: number, contentLeft: number, contentRight:
  /// number}
  external /*MDCTabDimensions*/ Map computeDimensions();
}

/// [Tab] events and helpers.
class tab {
  /// Emitted when the Tab is interacted with, regardless of its active state.
  /// Used by parent components to know which Tab to activate.
  ///
  /// Event data: {"detail": {"tab": MDCTab}}
  static const interactedEvent = 'MDCTab:interacted';
}
