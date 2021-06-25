@JS('mdc.base')
library base;

import 'dart:html';
import 'package:js/js.dart';

/// Base class for MDC Web components.
///
/// Javascript: `mdc.base.MDCComponent`.
///
/// * [Component Reference](https://material.io/develop/web/components/base/#mdccomponent)
/// * [Source Code](https://github.com/material-components/material-components-web/tree/master/packages/mdc-base/component.js)
@JS('MDCComponent')
abstract class Component {
  external static Component attachTo(Element root);
  external factory Component(Element root, [MDCFoundation? foundation, args]);

  external Element get root_;
  external MDCFoundation get foundation_;

  external void initialize(args);
  external MDCFoundation getDefaultFoundation();
  external void initialSyncWithDOM();
  external void destroy();
  external void listen(String type, EventListener handler);
  external void unlisten(String type, EventListener handler);
  external void emit(String type, data, [bool shouldBubble = false]);
}

/// The base class for each component's related foundation.
///
/// Javascript: `mdc.base.MDCFoundation`.
///
/// * [Component Reference](https://material.io/develop/web/components/base/#mdcfoundation)
/// * [Source Code](https://github.com/material-components/material-components-web/tree/master/packages/mdc-base/foundation.js)
@JS()
abstract class MDCFoundation {
  external factory MDCFoundation([adapter]);

  external void init();
  external void destroy();

  external static get cssClasses;
  external static get strings;
  external static get numbers;

  external static dynamic get defaultAdapter;
}
