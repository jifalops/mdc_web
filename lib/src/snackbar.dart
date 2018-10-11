@JS('mdc.snackbar')
library mdc_web_snackbar;

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
abstract class Snackbar extends Component {
  external static Snackbar attachTo(Element element);
  external factory Snackbar(Element element, [Foundation foundation, args]);

  external bool get dismissesOnAction;
  external void set dismissesOnAction(bool value);

  external void show(SnackbarData data);
}

@JS()
@anonymous
abstract class SnackbarData {
  SnackbarData(
      {@required String message,
      Function actionHandler,
      String actionText,
      num timeout,
      bool multiline,
      bool actionOnBottom});
}
