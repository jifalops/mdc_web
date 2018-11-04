import 'base.dart';
import 'mdc_web/dialog.dart';

/// Dialogs inform users about a task and can contain critical information,
/// require decisions, or involve multiple tasks.
///
/// Javascript: `mdc.dialog.MDCDialog`.
///
/// * [Design Guidelines](https://material.io/go/design-dialogs)
/// * [Component Reference](https://material.io/develop/web/components/dialogs/#mdcdialog-properties-and-methods)
/// * [Demo](https://material-components.github.io/material-components-web-catalog/#/component/dialog)
/// * [Source Code](https://github.com/material-components/material-components-web/tree/master/packages/mdc-dialog/index.js)
class MDCDialog extends MDCComponent {
  static MDCDialog attachTo(Element root) => MDCDialog._attach(root);
  MDCDialog._attach(Element root) : _js = DialogComponent.attachTo(root);

  MDCDialog(Element root, [MDCFoundation foundation, args])
      : _js = _preserveUndefined(root, foundation, args);

  DialogComponent get js => _js;
  final DialogComponent _js;

  bool get isOpen => js.isOpen;
  String get escapeKeyAction => js.escapeKeyAction;
  void set escapeKeyAction(String value) => js.escapeKeyAction = value;
  String get scrimClickAction => js.scrimClickAction;
  void set scrimClickAction(String value) => js.scrimClickAction = value;
  bool get autoStackButtons => js.autoStackButtons;
  void set autoStackButtons(bool value) => js.autoStackButtons = value;

  /// Recalculates layout and automatically adds/removes modifier classes like
  /// --scrollable.
  void layout() => js.layout();
  void open() => js.open();

  /// [action] indicates why it was closed.
  void close([String action]) => js.close();

  static const openingEvent = 'MDCDialog:opening';
  static const openedEvent = 'MDCDialog:opened';

  /// `event.detail`: {action: string?}
  static const closingEvent = 'MDCDialog:closing';

  /// `event.detail`: {action: string?}
  static const closedEvent = 'MDCDialog:closed';
}

DialogComponent _preserveUndefined(
        Element root, MDCFoundation foundation, args) =>
    foundation == null
        ? DialogComponent(root)
        : args == null
            ? DialogComponent(root, foundation)
            : DialogComponent(root, foundation, args);
