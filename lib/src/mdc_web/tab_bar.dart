@JS('mdc.tabBar')
library tab_bar;

import 'dart:html';
import 'package:js/js.dart';
import 'base.dart';

/// Tabs organize and allow navigation between groups of content that are
/// related and at the same level of hierarchy. The Tab Bar contains the Tab
/// Scroller and Tab components.
///
/// Javascript: `mdc.tabBar.MDCTabBar`.
///
/// * [Design Guidelines](https://material.io/go/design-tabs)
/// * [Component Reference](https://material.io/develop/web/components/tabs/tab-bar/#mdctabbar-properties-and-methods)
/// * [Demo](https://material-components.github.io/material-components-web-catalog/#/component/tabs)
/// * [Source Code](https://github.com/material-components/material-components-web/blob/master/packages/mdc-tab-bar/index.js)
@JS('MDCTabBar')
abstract class TabBarComponent extends Component {
  external static TabBarComponent attachTo(Element root);
  external factory TabBarComponent(Element root,
      [MDCFoundation? foundation, args]);

  external void activateTab(int index);
  external void scrollIntoView(int index);
  external void set focusOnActivate(bool b);
}
