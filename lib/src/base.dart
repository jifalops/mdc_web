part of mdc_web;

/// The base class for each component's related foundation.
///
/// Javascript: `mdc.base.MDCFoundation`.
///
/// See the [component reference](https://material.io/develop/web/components/base/#mdcfoundation)
/// and [source code](https://github.com/material-components/material-components-web/tree/master/packages/mdc-base).
@JS('base.MDCFoundation')
abstract class MDCFoundation {
  external factory MDCFoundation([adapter]);

  external void init();
  external void destroy();

  @JS('cssClasses')
  external static Map get _cssClasses;
  Map<String, String> get cssClasses => Map.from(_cssClasses);

  @JS('strings')
  external static Map get _strings;
  Map<String, String> get strings => Map.from(_strings);

  @JS('numbers')
  external static Map get _numbers;
  Map<String, num> get numbers => Map.from(_numbers);

  external static dynamic get defaultAdapter;
}

/// Base class for MDC Web components.
///
/// Javascript: `mdc.base.MDCComponent`.
///
/// See the [component reference](https://material.io/develop/web/components/base/#mdccomponent)
/// and [source code](https://github.com/material-components/material-components-web/tree/master/packages/mdc-base).
@JS('base.MDCComponent')
abstract class MDCComponent {
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
  external void emit(String type, Object data, [bool shouldBubble = false]);

  /// Subclasses should override.
  external static MDCComponent attachTo(Element root);
}
