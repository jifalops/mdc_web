part of mdc_web;

/// The base class for each component's related foundation.
///
/// Javascript: `mdc.base.MDCFoundation`.
///
/// See the [component reference](https://material.io/develop/web/components/base/#mdcfoundation)
/// and [source code](https://github.com/material-components/material-components-web/tree/master/packages/mdc-base/foundation.js).
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

/// Base class for MDC Web components.
///
/// Javascript: `mdc.base.MDCComponent`.
///
/// See the [component reference](https://material.io/develop/web/components/base/#mdccomponent)
/// and [source code](https://github.com/material-components/material-components-web/tree/master/packages/mdc-base/component.js).
@JS('base.MDCComponent')
abstract class MDCComponent {
  external static MDCComponent attachTo(Element root);
  external factory MDCComponent(Element element,
      [MDCFoundation foundation, args]);

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

/// Wrapper for [MDCComponent.listen()].
void mdcListen(MDCComponent component, String type, EventListener handler) =>
    component.listen(type, allowInterop(handler));

/// Wrapper for [MDCComponent.unlisten()].
void mdcUnlisten(MDCComponent component, String type, EventListener handler) =>
    component.unlisten(type, allowInterop(handler));
