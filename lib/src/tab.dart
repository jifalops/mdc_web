part of mdc_web;

/// A tab governs the visibility of one group of content.
///
/// Javascript: `mdc.tab.MDCTab`.
///
/// * [Design Guidelines](https://material.io/go/design-tabs)
/// * [Component Reference](https://material.io/develop/web/components/tabs/tab/#mdctab-properties-and-methods)
/// * [Demo](https://material-components.github.io/material-components-web-catalog/#/component/tabs)
/// * [Source Code](https://github.com/material-components/material-components-web/blob/master/packages/mdc-tab/index.js)
class MDCTab extends MDCComponent<_Tab> {
  static MDCTab attachTo(Element root) => MDCTab._attach(root);
  MDCTab._attach(Element root) : super._(_Tab.attachTo(root));

  MDCTab(Element root, [foundation, args])
      : super._(_preserveUndefined(root, foundation, args));

  static _Tab _preserveUndefined(Element root, foundation, args) =>
      foundation == null
          ? _Tab(root)
          : args == null
              ? _Tab(root, foundation)
              : _Tab(root, foundation, args);

  bool get active => _js.active;

  /// [previousIndicatorClientRect] is a DOMRect. See also
  /// [computeIndicatorClientRect()].
  void activate([/*DOMRect*/ previousIndicatorClientRect]) =>
      _js.activate(previousIndicatorClientRect);
  void deactivate() => _js.deactivate();
  void focus() => _js.focus();

  /// Returns a DOMRect.
  /*DOMRect*/ computeIndicatorClientRect() => _js.computeIndicatorClientRect();

  /// {rootLeft: number, rootRight: number, contentLeft: number, contentRight:
  /// number}
  /*MDCTabDimensions*/ computeDimensions() => _js.computeDimensions();

  /// Emitted when the Tab is interacted with, regardless of its active state.
  /// Used by parent components to know which Tab to activate.
  ///
  /// Event data: {"detail": {"tab": MDCTab}}
  static const interactedEvent = 'MDCTab:interacted';
}

@JS('tab.MDCTab')
abstract class _Tab extends _Component {
  external static _Tab attachTo(Element root);
  external factory _Tab(Element root, [foundation, args]);

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
  external /*MDCTabDimensions*/ computeDimensions();
}

// class MDCTabDimensions {
//   const MDCTabDimensions(
//       {this.rootLeft: 0,
//       this.rootRight: 0,
//       this.contentLeft: 0,
//       this.contentRight: 0});
//   final num rootLeft, rootRight, contentLeft, contentRight;
// }

// @JS()
// @anonymous
// abstract class _TabDimensions {
//   external factory _TabDimensions(
//       {num rootLeft, num rootRight, num contentLeft, num contentRight});
//   external num get rootLeft;
//   external num get rootRight;
//   external num get contentLeft;
//   external num get contentRight;
// }
