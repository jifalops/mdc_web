part of mdc_web;

/// A tab governs the visibility of one group of content.
///
/// Javascript: `mdc.tab.MDCTab`.
///
/// See the [component reference](https://material.io/develop/web/components/tabs/tab/#mdctab-properties-and-methods)
/// and [source code](https://github.com/material-components/material-components-web/blob/master/packages/mdc-tab/index.js).
@JS('tab.MDCTab')
abstract class MDCTab extends MDCComponent {
  external static MDCTab attachTo(Element element);
  external factory MDCTab(Element element, [MDCFoundation foundation, args]);

  external bool get active;

  /// [previousIndicatorClientRect] is a DOMRect. See also
  /// [computeIndicatorClientRect()].
  external void activate([/*DOMRect*/ previousIndicatorClientRect]);
  external void deactivate();
  external void focus();

  /// Returns a DOMRect.
  external /*DOMRect*/ computeIndicatorClientRect();

  /// {rootLeft: number, rootRight: number, contentLeft: number, contentRight:
  /// number}
  external /*MDCTabDimensions*/ Map computeDimensions();
}

/// Emitted when the Tab is interacted with, regardless of its active state.
/// Used by parent components to know which Tab to activate.
///
/// Event data: {"detail": {"tab": MDCTab}}
const mdcTabInteractedEvent = 'MDCTab:interacted';
