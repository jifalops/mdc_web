@JS('mdc.tabScroller')
library tabScroller;

import 'dart:html';
import 'package:js/js.dart';
import 'base.dart';

/// A Tab Scroller allows for smooth native and animated scrolling of tabs.
///
/// Javascript: `mdc.tabScroller.MDCTabScroller`.
///
/// * [Design Guidelines](https://material.io/go/design-tabs)
/// * [Component Reference](https://material.io/develop/web/components/tabs/scroller/#mdctabscroller-methods)
/// * [Demo](https://material-components.github.io/material-components-web-catalog/#/component/tabs)
/// * [Source Code](https://github.com/material-components/material-components-web/blob/master/packages/mdc-tab-scroller/index.js)
@JS('MDCTabScroller')
abstract class TabScrollerComponent extends Component {
  external static TabScrollerComponent attachTo(Element root);
  external factory TabScrollerComponent(Element root, [foundation, args]);

  external void scrollTo(num scrollX);
  external void incrementScroll(num scrollX);
  external num getScrollPosition();
  external num getScrollContentWidth();
}
