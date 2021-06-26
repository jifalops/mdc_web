@JS('mdc.snackbar')
library snackbar;

import 'dart:html';
import 'package:js/js.dart';
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
  external factory SnackbarComponent(Element root,
      [MDCFoundation? foundation, args]);

  bool? dismissesOnAction;

  external void open();
  external void close([String? reason]);
  int? timeoutMs;
  String? labelText;
  String? actionButtonText;
  external bool get isOpen;
}
