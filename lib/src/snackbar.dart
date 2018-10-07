part of mdc_web;

/// Snackbars provide brief messages about app processes at the bottom of the
/// screen.
///
/// Javascript: `mdc.snackbar.MDCSnackbar`.
///
/// See the [component reference](https://material.io/develop/web/components/snackbars/)
/// and [source code](https://github.com/material-components/material-components-web/blob/master/packages/mdc-snackbar/index.js).
@JS('snackbar.MDCSnackbar')
abstract class MDCSnackbar extends MDCComponent {
  external factory MDCSnackbar(Element element,
      [MDCFoundation foundation, args]);
  external static MDCSnackbar attachTo(Element element);

  external bool get dismissesOnAction;
  external void set dismissesOnAction(bool value);

  @JS('show')
  external void _show(data);

  void show(message,
          {Function actionHandler,
          String actionText,
          num timeout,
          bool multiline,
          bool actionOnBottom}) =>
      _show({
        'message': message,
        'actionHandler': actionHandler,
        'actionText': actionText,
        'timeout': timeout,
        'multiline': multiline,
        'actionOnBottom': actionOnBottom,
      });
}
