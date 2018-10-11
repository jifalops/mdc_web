@JS('mdc.tabBar')
library mdc_web_tab_bar;

import 'dart:html';
import 'package:js/js.dart';
import 'base.dart';

/// Tabs organize and allow navigation between groups of content that are
/// related and at the same level of hierarchy. The Tab Bar contains the Tab
/// Scroller and Tab components.
///
/// Javascript: `mdc.tabBar.MDCTabBar`.
///
/// See the [component reference](https://material.io/develop/web/components/tabs/tab-bar/#mdctabbar-properties-and-methods)
/// and [source code](https://github.com/material-components/material-components-web/blob/master/packages/mdc-tab-bar/index.js).
@JS('MDCTabBar')
abstract class TabBar extends Component {
  external static TabBar attachTo(Element element);
  external factory TabBar(Element element, [Foundation foundation, args]);

  external void activateTab(num index);
  external void scrollIntoView(num index);
}

/// [TabBar] events and helpers.
class tabBar {
// Event data: {"detail": {"index": number}}
  static const activatedEvent = 'MDCTabBar:activated';
}
