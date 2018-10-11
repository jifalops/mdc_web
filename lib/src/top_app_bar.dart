@JS('mdc.topAppBar')
library mdc_web_top_app_bar;

import 'dart:html';
import 'package:js/js.dart';
import 'base.dart';

/// A Top app bar acts as a container for items such as application title,
/// navigation icon, and action items.
///
/// Javascript: `mdc.topAppBar.MDCTopAppBar`.
///
/// * [Design Guidelines](https://material.io/go/design-app-bar-top)
/// * [Component Reference](https://material.io/develop/web/components/top-app-bar/#mdctopappbar-properties-and-methods)
/// * [Demo](https://material-components.github.io/material-components-web-catalog/#/component/top-app-bar)
/// * [Source Code](https://github.com/material-components/material-components-web/blob/master/packages/mdc-top-app-bar/index.js)
@JS('MDCTopAppBar')
abstract class TopAppBar extends Component {
  external static TopAppBar attachTo(Element element);
  external factory TopAppBar(Element element, [Foundation foundation, args]);

  /// The default scroll target is `window`.
  external void setScrollTarget(Element target);
}

/// [TopAppBar] events and helpers.
class topAppBar {
  /// Emits when the navigation icon is clicked.
  static const navEvent = 'MDCTopAppBar:nav';
}
