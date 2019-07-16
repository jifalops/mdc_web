import 'base.dart';
import 'mdc_web/snackbar.dart';

export 'mdc_web/snackbar.dart' show SnackbarData;

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

  MDCSnackbar(Element root, [MDCFoundation foundation, args])
      : _js = _preserveUndefined(root, foundation, args);

  SnackbarComponent get js => _js;
  final SnackbarComponent _js;

  bool get dismissesOnAction => js.dismissesOnAction;
  set dismissesOnAction(bool value) => js.dismissesOnAction = value;

  void show(SnackbarData data) => js.show(data);
}

SnackbarComponent _preserveUndefined(
        Element root, MDCFoundation foundation, args) =>
    foundation == null
        ? SnackbarComponent(root)
        : args == null
            ? SnackbarComponent(root, foundation)
            : SnackbarComponent(root, foundation, args);
