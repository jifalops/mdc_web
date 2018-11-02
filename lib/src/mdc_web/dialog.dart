part of mdc_web;

/// Dialogs inform users about a task and can contain critical information,
/// require decisions, or involve multiple tasks.
///
/// Javascript: `mdc.dialog.MDCDialog`.
///
/// * [Design Guidelines](https://material.io/go/design-dialogs)
/// * [Component Reference](https://material.io/develop/web/components/dialogs/#mdcdialog-properties-and-methods)
/// * [Demo](https://material-components.github.io/material-components-web-catalog/#/component/dialog)
/// * [Source Code](https://github.com/material-components/material-components-web/tree/master/packages/mdc-dialog/index.js)
class MDCDialog extends MDCComponent<_Dialog> implements _Dialog {
  static MDCDialog attachTo(Element root) => MDCDialog._attach(root);
  MDCDialog._attach(Element root) : super._(_Dialog.attachTo(root));

  MDCDialog(Element root, [foundation, args])
      : super._(_preserveUndefined(root, foundation, args));

  static _Dialog _preserveUndefined(Element root, foundation, args) =>
      foundation == null
          ? _Dialog(root)
          : args == null
              ? _Dialog(root, foundation)
              : _Dialog(root, foundation, args);

  bool get isOpen => _js.isOpen;
  String get escapeKeyAction => _js.escapeKeyAction;
  void set escapeKeyAction(String value) => _js.escapeKeyAction = value;
  String get scrimClickAction => _js.scrimClickAction;
  void set scrimClickAction(String value) => _js.scrimClickAction = value;
  bool get autoStackButtons => _js.autoStackButtons;
  void set autoStackButtons(bool value) => _js.autoStackButtons = value;

  /// Recalculates layout and automatically adds/removes modifier classes like
  /// --scrollable.
  void layout() => _js.layout();
  void open() => _js.open();

  /// [action] indicates why it was closed.
  void close([String action]) => _js.close();

  static const openingEvent = 'MDCDialog:opening';
  static const openedEvent = 'MDCDialog:opened';

  /// `event.detail`: {action: string?}
  static const closingEvent = 'MDCDialog:closing';

  /// `event.detail`: {action: string?}
  static const closedEvent = 'MDCDialog:closed';
}

@JS('dialog.MDCDialog')
abstract class _Dialog extends _Component {
  external static _Dialog attachTo(Element root);
  external factory _Dialog(Element root, [foundation, args]);

  external bool get isOpen;
  external String get escapeKeyAction;
  external void set escapeKeyAction(String value);
  external String get scrimClickAction;
  external void set scrimClickAction(String value);
  external bool get autoStackButtons;
  external void set autoStackButtons(bool value);

  /// Recalculates layout and automatically adds/removes modifier classes like
  /// --scrollable.
  external void layout();
  external void open();

  /// [action] indicates why it was closed.
  external void close([String action]);
}
