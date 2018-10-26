part of mdc_web;

/// Snackbars provide brief messages about app processes at the bottom of the
/// screen.
///
/// Javascript: `mdc.snackbar.MDCSnackbar`.
///
/// * [Design Guidelines](https://material.io/go/design-snackbar)
/// * [Component Reference](https://material.io/develop/web/components/snackbars/)
/// * [Demo](https://material-components.github.io/material-components-web-catalog/#/component/snackbar)
/// * [Source Code](https://github.com/material-components/material-components-web/blob/master/packages/mdc-snackbar/index.js)
class MDCSnackbar extends MDCComponent<_Snackbar> {
  static MDCSnackbar attachTo(Element root) => MDCSnackbar._attach(root);
  MDCSnackbar._attach(Element root) : super._(_Snackbar.attachTo(root));

  MDCSnackbar(Element root, [foundation, args])
      : super._(_preserveUndefined(root, foundation, args));

  static _Snackbar _preserveUndefined(Element root, foundation, args) =>
      foundation == null
          ? _Snackbar(root)
          : args == null
              ? _Snackbar(root, foundation)
              : _Snackbar(root, foundation, args);

  bool get dismissesOnAction => _js.dismissesOnAction;
  void set dismissesOnAction(bool value) => _js.dismissesOnAction = value;

  void show(SnackbarData data) => _js.show(data);
}

@JS('snackbar.MDCSnackbar')
abstract class _Snackbar extends _Component {
  external static _Snackbar attachTo(Element root);
  external factory _Snackbar(Element root, [foundation, args]);

  external bool get dismissesOnAction;
  external void set dismissesOnAction(bool value);

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
      num timeout,
      bool multiline,
      bool actionOnBottom});
}
