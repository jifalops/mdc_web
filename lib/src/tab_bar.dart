
import 'base.dart';
import 'mdc_web/tab_bar.dart';

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
class MDCTabBar extends MDCComponent {
  static MDCTabBar attachTo(Element root) => MDCTabBar._attach(root);
  MDCTabBar._attach(Element root) : _js = TabBarComponent.attachTo(root);

  MDCTabBar(Element root, [foundation, args])
      : _js = _preserveUndefined(root, foundation, args);


  TabBarComponent get js => _js;
  final TabBarComponent _js;

  void activateTab(int index) => js.activateTab(index);
  void scrollIntoView(int index) => js.scrollIntoView(index);

  /// Event data: {"detail": {"index": number}}
  static const activatedEvent = 'MDCTabBar:activated';
}
   TabBarComponent _preserveUndefined(Element root, foundation, args) =>
      foundation == null
          ? TabBarComponent(root)
          : args == null
              ? TabBarComponent(root, foundation)
              : TabBarComponent(root, foundation, args);
