@JS('mdc.dialog')
library dialog;

import 'dart:html';
import 'package:js/js.dart';
import 'base.dart';

/// Dialogs inform users about a task and can contain critical information,
/// require decisions, or involve multiple tasks.
///
/// Javascript: `mdc.dialog.MDCDialog`.
///
/// * [Design Guidelines](https://material.io/go/design-dialogs)
/// * [Component Reference](https://material.io/develop/web/components/dialogs/#mdcdialog-properties-and-methods)
/// * [Demo](https://material-components.github.io/material-components-web-catalog/#/component/dialog)
/// * [Source Code](https://github.com/material-components/material-components-web/tree/master/packages/mdc-dialog/index.js)
@JS('MDCDialog')
abstract class DialogComponent extends Component {
  external static DialogComponent attachTo(Element root);
  external factory DialogComponent(Element root,
      [MDCFoundation? foundation, args]);

  external bool get isOpen;
  String escapeKeyAction;
  String scrimClickAction;
  bool autoStackButtons;

  /// Recalculates layout and automatically adds/removes modifier classes like
  /// --scrollable.
  external void layout();
  external void open();

  /// [action] indicates why it was closed.
  external void close([String? action]);
}
