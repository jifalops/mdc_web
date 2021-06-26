import 'base.dart';
import 'mdc_web/top_app_bar.dart';

/// A Top app bar acts as a container for items such as application title,
/// navigation icon, and action items.
///
/// Javascript: `mdc.topAppBar.MDCTopAppBar`.
///
/// * [Design Guidelines](https://material.io/go/design-app-bar-top)
/// * [Component Reference](https://material.io/develop/web/components/top-app-bar/#mdctopappbar-properties-and-methods)
/// * [Demo](https://material-components.github.io/material-components-web-catalog/#/component/top-app-bar)
/// * [Source Code](https://github.com/material-components/material-components-web/blob/master/packages/mdc-top-app-bar/index.js)
class MDCTopAppBar extends MDCComponent {
  static MDCTopAppBar attachTo(Element root) => MDCTopAppBar._attach(root);
  MDCTopAppBar._attach(Element root) : _js = TopAppBarComponent.attachTo(root);

  MDCTopAppBar(Element? root, [MDCFoundation? foundation, args])
      : _js = _preserveUndefined(root, foundation, args);

  TopAppBarComponent get js => _js;
  final TopAppBarComponent _js;

  /// The default scroll target is `window`.
  void setScrollTarget(Element target) => js.setScrollTarget(target);

  /// Emits when the navigation icon is clicked.
  static const navEvent = 'MDCTopAppBar:nav';
}

TopAppBarComponent _preserveUndefined(
        Element? root, MDCFoundation? foundation, args) =>
    foundation == null
        ? TopAppBarComponent(root)
        : args == null
            ? TopAppBarComponent(root, foundation)
            : TopAppBarComponent(root, foundation, args);
