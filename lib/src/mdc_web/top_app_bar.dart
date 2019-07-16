@JS('mdc.topAppBar')
library top_app_bar;

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
abstract class TopAppBarComponent extends Component {
  external static TopAppBarComponent attachTo(Element root);
  external factory TopAppBarComponent(Element root,
      [MDCFoundation foundation, args]);

  /// The default scroll target is `window`.
  external void setScrollTarget(Element target);
}
