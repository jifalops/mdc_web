part of mdc_web;

/// Base class for MDC Web components.
///
/// Javascript: `mdc.base.MDCComponent`.
///
/// * [Component Reference](https://material.io/develop/web/components/base/#mdccomponent)
/// * [Source Code](https://github.com/material-components/material-components-web/tree/master/packages/mdc-base/component.js)
abstract class MDCComponent {
  /// The underlying Javascript component for this class.
  _Component get js;

  Element get root_ => js.root_;
  MDCFoundation get foundation_ => js.foundation_;

  void initialize(args) => js.initialize(args);
  MDCFoundation getDefaultFoundation() => js.getDefaultFoundation();
  void initialSyncWithDOM() => js.initialSyncWithDOM();
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

@JS('base.MDCComponent')
abstract class _Component {
  external static _Component attachTo(Element root);
  external factory _Component(Element root, [foundation, args]);

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
@JS('base.MDCFoundation')
abstract class MDCFoundation {
  external factory MDCFoundation([adapter]);

  external void init();
  external void destroy();

  external static get cssClasses;
  external static get strings;
  external static get numbers;

  external static dynamic get defaultAdapter;
}
