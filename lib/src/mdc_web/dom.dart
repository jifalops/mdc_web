@JS('mdc.dom')
library dom;

import 'dart:html';
import 'package:js/js.dart';

/// MDC DOM provides commonly-used utilities for inspecting, traversing, and
/// manipulating the DOM.
///
/// Javascript: `mdc.dom.ponyfill`.
///
/// * [Component Reference](https://material.io/develop/web/components/dom/)
/// * [Source Code](https://github.com/material-components/material-components-web/tree/master/packages/mdc-dom/ponyfill.js)
@JS('ponyfill')
abstract class Ponyfill {
  /// Returns the ancestor of the given element matching the given selector
  /// (which may be the element itself if it matches), or null if no matching
  /// ancestor is found.
  external static Element closest(Element root, String selector);

  /// Returns true if the given element matches the given CSS selector.
  external static bool matches(Element root, String selector);
}
