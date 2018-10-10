part of mdc_web;

/// Tabs organize and allow navigation between groups of content that are
/// related and at the same level of hierarchy. The Tab Bar contains the Tab
/// Scroller and Tab components.
///
/// Javascript: `mdc.tabBar.MDCTabBar`.
///
/// See the [component reference](https://material.io/develop/web/components/tabs/tab-bar/#mdctabbar-properties-and-methods)
/// and [source code](https://github.com/material-components/material-components-web/blob/master/packages/mdc-tab-bar/index.js).
@JS('tabBar.MDCTabBar')
abstract class MDCTabBar extends MDCComponent {
  external static MDCTabBar attachTo(Element element);
  external factory MDCTabBar(Element element, [MDCFoundation foundation, args]);

  external void activateTab(num index);
  external void scrollIntoView(num index);
}

// Event data: {"detail": {"index": number}}
const mdcTabBarActivatedEvent = 'MDCTabBar:activated';
