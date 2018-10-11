@JS('mdc.tabScroller')
library mdc_web_tab_scroller;

import 'dart:html';
import 'package:js/js.dart';
import 'base.dart';

/// A Tab Scroller allows for smooth native and animated scrolling of tabs.
///
/// Javascript: `mdc.tabScroller.MDCTabScroller`.
///
/// See the [component reference](https://material.io/develop/web/components/tabs/scroller/#mdctabscroller-methods)
/// and [source code](https://github.com/material-components/material-components-web/blob/master/packages/mdc-tab-scroller/index.js).
@JS('MDCTabScroller')
abstract class TabScroller extends Component {
  external static TabScroller attachTo(Element element);
  external factory TabScroller(Element element, [Foundation foundation, args]);

  external void scrollTo(num scrollX);
  external void incrementScroll(num scrollX);
  external num getScrollPosition();
  external num getScrollContentWidth();
}
