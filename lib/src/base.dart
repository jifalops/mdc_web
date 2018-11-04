import 'dart:html' show Element, EventListener;
import 'package:js/js.dart' show allowInterop, allowInteropCaptureThis;
import 'package:meta/meta.dart';
import 'mdc_web/base.dart';

export 'dart:html' show Element;
export 'mdc_web/base.dart' show MDCFoundation;

/// Base class for MDC Web components.
///
/// Javascript: `mdc.base.MDCComponent`.
///
/// * [Component Reference](https://material.io/develop/web/components/base/#mdccomponent)
/// * [Source Code](https://github.com/material-components/material-components-web/tree/master/packages/mdc-base/component.js)
abstract class MDCComponent {
  /// The underlying Javascript component.
  @protected
  Component get js;

  Element get root => js.root_;
  MDCFoundation get foundation => js.foundation_;

  /// Releases resources and removes any listeners.
  void destroy() => js.destroy();
  void listen(String type, EventListener handler, {bool captureThis: false}) =>
      js.listen(
          type,
          captureThis
              ? allowInteropCaptureThis(handler)
              : allowInterop(handler));
  void unlisten(String type, EventListener handler,
          {bool captureThis: false}) =>
      js.unlisten(
          type,
          captureThis
              ? allowInteropCaptureThis(handler)
              : allowInterop(handler));
  void emit(String type, data, [bool shouldBubble = false]) =>
      js.emit(type, data, shouldBubble);
}
