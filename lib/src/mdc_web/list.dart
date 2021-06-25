@JS('mdc.list')
library list;

import 'dart:html';
import 'package:js/js.dart';
import 'base.dart';

/// Lists are continuous, vertical indexes of text or images.
///
/// Javascript: `mdc.list.MDCList`.
///
/// * [Design Guidelines](https://material.io/go/design-lists)
/// * [Component Reference](https://material.io/develop/web/components/lists/)
/// * [Demo](https://material-components.github.io/material-components-web-catalog/#/component/list)
/// * [Source Code](https://github.com/material-components/material-components-web/blob/master/packages/mdc-list/index.js)
@JS('MDCList')
abstract class ListComponent extends Component {
  external static ListComponent attachTo(Element root);
  external factory ListComponent(Element root,
      [MDCFoundation? foundation, args]);

  external set vertical(bool value);
  external set wrapFocus(bool value);
  external set singleSelection(bool value);
  external set selectedIndex(int value);

  external List get listElements;

  external void layout();
}
