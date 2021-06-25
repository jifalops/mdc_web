import 'base.dart';
import 'mdc_web/tab.dart';

export 'mdc_web/tab.dart' show MDCTabDimensions;

/// A tab governs the visibility of one group of content.
///
/// Javascript: `mdc.tab.MDCTab`.
///
/// * [Design Guidelines](https://material.io/go/design-tabs)
/// * [Component Reference](https://material.io/develop/web/components/tabs/tab/#mdctab-properties-and-methods)
/// * [Demo](https://material-components.github.io/material-components-web-catalog/#/component/tabs)
/// * [Source Code](https://github.com/material-components/material-components-web/blob/master/packages/mdc-tab/index.js)
class MDCTab extends MDCComponent {
  static MDCTab attachTo(Element root) => MDCTab._attach(root);
  MDCTab._attach(Element root) : _js = TabComponent.attachTo(root);

  MDCTab(Element root, [MDCFoundation? foundation, args])
      : _js = _preserveUndefined(root, foundation, args);

  TabComponent get js => _js;
  final TabComponent _js;

  bool get active => js.active;

  /// [previousIndicatorClientRect] is a DOMRect. See also
  /// [computeIndicatorClientRect()].
  void activate([/*DOMRect*/ previousIndicatorClientRect]) =>
      js.activate(previousIndicatorClientRect);
  void deactivate() => js.deactivate();
  void focus() => js.focus();

  /// Returns a DOMRect.
  /*DOMRect*/ computeIndicatorClientRect() => js.computeIndicatorClientRect();

  MDCTabDimensions computeDimensions() => js.computeDimensions();

  /// Emitted when the Tab is interacted with, regardless of its active state.
  /// Used by parent components to know which Tab to activate.
  ///
  /// Event data: {"detail": {"tab": MDCTab}}
  static const interactedEvent = 'MDCTab:interacted';
}

TabComponent _preserveUndefined(Element root, MDCFoundation? foundation, args) =>
    foundation == null
        ? TabComponent(root)
        : args == null
            ? TabComponent(root, foundation)
            : TabComponent(root, foundation, args);
