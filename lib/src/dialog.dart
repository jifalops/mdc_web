part of mdc_web;

/// Dialogs inform users about a task and can contain critical information,
/// require decisions, or involve multiple tasks.
///
/// Javascript: `mdc.dialog.MDCDialog`.
///
/// See the [component reference](https://material.io/develop/web/components/dialogs/#mdcdialog-properties-and-methods)
/// and [source code](https://github.com/material-components/material-components-web/tree/master/packages/mdc-dialog/index.js).
@JS('dialog.MDCDialog')
abstract class MDCDialog extends MDCComponent {
  external factory MDCDialog(Element element, [MDCFoundation foundation, args]);
  external static MDCDialog attachTo(Element element);

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

  static const openingEvent = 'MDCDialog:opening';
  static const openedEvent = 'MDCDialog:opened';

  /// `event.detail`: {action: string?}
  static const closingEvent = 'MDCDialog:closing';

  /// `event.detail`: {action: string?}
  static const closedEvent = 'MDCDialog:closed';
}
