part of mdc_web;

/// MDC DOM provides commonly-used utilities for inspecting, traversing, and
/// manipulating the DOM.
///
/// Javascript: `mdc.dom.ponyfill`.
///
/// See the [component reference](https://material.io/develop/web/components/dom/)
/// and [source code](https://github.com/material-components/material-components-web/tree/master/packages/mdc-dom/ponyfill.js).
@JS('dom.ponyfill')
abstract class Ponyfill {
  /// Returns the ancestor of the given element matching the given selector
  /// (which may be the element itself if it matches), or null if no matching
  /// ancestor is found.
  external static Element closest(Element element, String selector);

  /// Returns true if the given element matches the given CSS selector.
  external static bool matches(Element element, String selector);
}
