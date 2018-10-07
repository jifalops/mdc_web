part of mdc_web;

/// The `mdc.base.MDCComponent` Javascript class.
///
/// See the [component reference](https://material.io/develop/web/components/base/#mdccomponent)
/// and [source code](https://github.com/material-components/material-components-web/tree/master/packages/mdc-base).
@JS('base.MDCComponent')
abstract class MDCComponent {
  external factory MDCComponent(Element element, [MDCFoundation foundation, args]);

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
