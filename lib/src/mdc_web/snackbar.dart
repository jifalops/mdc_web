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
class MDCSnackbar extends MDCComponent {
  static MDCSnackbar attachTo(Element root) => MDCSnackbar._attach(root);
  MDCSnackbar._attach(Element root) : _js = SnackbarComponent.attachTo(root);

  MDCSnackbar(Element root, [foundation, args])
      : _js = _preserveUndefined(root, foundation, args);

  static SnackbarComponent _preserveUndefined(Element root, foundation, args) =>
      foundation == null
          ? SnackbarComponent(root)
          : args == null
              ? SnackbarComponent(root, foundation)
              : SnackbarComponent(root, foundation, args);

  SnackbarComponent get js => _js;
  final SnackbarComponent _js;

  bool get dismissesOnAction => js.dismissesOnAction;
  void set dismissesOnAction(bool value) => js.dismissesOnAction = value;

  void show(SnackbarData data) => js.show(data);
}

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
