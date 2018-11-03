@JS('mdc.snackbar')
library snackbar;

import 'dart:html';
import 'package:js/js.dart';
import 'package:meta/meta.dart';
import 'base.dart';

/// Snackbars provide brief messages about app processes at the bottom of the
/// screen.
///
/// Javascript: `mdc.snackbar.MDCSnackbar`.
///
/// * [Design Guidelines](https://material.io/go/design-snackbar)
/// * [Component Reference](https://material.io/develop/web/components/snackbars/)
/// * [Demo](https://material-components.github.io/material-components-web-catalog/#/component/snackbar)
/// * [Source Code](https://github.com/material-components/material-components-web/blob/master/packages/mdc-snackbar/index.js)
@JS('MDCSnackbar')
abstract class SnackbarComponent extends Component {
  external static SnackbarComponent attachTo(Element root);
  external factory SnackbarComponent(Element root, [foundation, args]);

  bool dismissesOnAction;

  external void show(SnackbarData data);
}

/// Passed to [MDCSnackbar.show()].
@JS()
@anonymous
abstract class SnackbarData {
  external factory SnackbarData(
      {@required String message,
      void Function() actionHandler,
      String actionText,
      int timeout,
      bool multiline,
      bool actionOnBottom});
  String message;
  void Function() actionHandler;
  String actionText;
  int timeout;
  bool multiline;
  bool actionOnBottom;
}
