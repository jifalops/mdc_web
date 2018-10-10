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
  external static MDCDialog attachTo(Element element);
  external factory MDCDialog(Element element, [MDCFoundation foundation, args]);

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

const mdcDialogOpeningEvent = 'MDCDialog:opening';
const mdcDialogOpenedEvent = 'MDCDialog:opened';

/// `event.detail`: {action: string?}
const mdcDialogClosingEvent = 'MDCDialog:closing';

/// `event.detail`: {action: string?}
const mdcDialogClosedEvent = 'MDCDialog:closed';
