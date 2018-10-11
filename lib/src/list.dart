@JS('mdc.list')
library mdc_web_list;

import 'dart:core' as core;
import 'dart:html';
import 'package:js/js.dart';
import 'base.dart';

/// Lists are continuous, vertical indexes of text or images.
///
/// Javascript: `mdc.list.MDCList`.
///
/// See the [component reference](https://material.io/develop/web/components/lists/)
/// and [source code](https://github.com/material-components/material-components-web/blob/master/packages/mdc-list/index.js).
@JS('MDCList')
abstract class List extends Component {
  external static List attachTo(Element element);
  external factory List(Element element, [Foundation foundation, args]);

  external void set vertical(core.bool value);
  external void set wrapFocus(core.bool value);
  external void set singleSelection(core.bool value);
  external void set selectedIndex(core.num value);

  external core.List get listElements;

  external void layout();
}

/// [List] events and helpers.
class list {
  /// Casts [List.listElements].
  core.List<Element> listElements(List list) =>
      core.List.from(list.listElements);
}
