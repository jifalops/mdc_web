part of mdc_web;

/// Base class for MDC Web components.
///
/// Javascript: `mdc.base.MDCComponent`.
///
/// * [Component Reference](https://material.io/develop/web/components/base/#mdccomponent)
/// * [Source Code](https://github.com/material-components/material-components-web/tree/master/packages/mdc-base/component.js)
class MDCComponent<T extends _Component> implements _Component {
  static MDCComponent attachTo(Element root) => MDCComponent._attach(root);

  /// Example constructor for calling attach on the underlying component.
  /// Child classes should implement their own version and call `super._()`.
  /// Do not call this from child classes.
  MDCComponent._attach(Element root) : _js = _Component.attachTo(root);

  const MDCComponent._(this._js);

  /// Example default constructor child classes will recreate.
  /// Do not call this from child classes.
  MDCComponent(Element root, [foundation, args])
      : _js = _preserveUndefined(root, foundation, args);

  static _Component _preserveUndefined(Element root, foundation, args) =>
      foundation == null
          ? _Component(root)
          : args == null
              ? _Component(root, foundation)
              : _Component(root, foundation, args);

  /// The underlying Javascript component for this class.
  final T _js;

  Element get root_ => _js.root_;
  MDCFoundation get foundation_ => _js.foundation_;

  void initialize(args) => _js.initialize(args);
  MDCFoundation getDefaultFoundation() => _js.getDefaultFoundation();
  void initialSyncWithDOM() => _js.initialSyncWithDOM();
  void destroy() => _js.destroy();
  void listen(String type, EventListener handler, {bool captureThis: false}) =>
      _js.listen(
          type,
          captureThis
              ? allowInteropCaptureThis(handler)
              : allowInterop(handler));
  void unlisten(String type, EventListener handler,
          {bool captureThis: false}) =>
      _js.unlisten(
          type,
          captureThis
              ? allowInteropCaptureThis(handler)
              : allowInterop(handler));
  void emit(String type, data, [bool shouldBubble = false]) =>
      _js.emit(type, data, shouldBubble);
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
