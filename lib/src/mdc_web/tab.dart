@JS('mdc.tab')
library tab;

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
abstract class TabComponent extends Component {
  external static TabComponent attachTo(Element root);
  external factory TabComponent(Element root, [MDCFoundation? foundation, args]);

  external bool get active;

  /// [previousIndicatorClientRect] is a DOMRect. See also
  /// [computeIndicatorClientRect()].
  external void activate([/*DOMRect*/ previousIndicatorClientRect]);
  external void deactivate();
  external void focus();

  /// Returns a DOMRect.
  external /*DOMRect*/ computeIndicatorClientRect();

  external MDCTabDimensions computeDimensions();
}

@JS()
@anonymous
abstract class MDCTabDimensions {
  external factory MDCTabDimensions(
      {num? rootLeft, num? rootRight, num? contentLeft, num? contentRight});
  num rootLeft;
  num rootRight;
  num contentLeft;
  num contentRight;
}
