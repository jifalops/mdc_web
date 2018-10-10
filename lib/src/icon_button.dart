part of mdc_web;

/// Toggle between an on and off icon.
///
/// Javascript: `mdc.iconButton.MDCIconButtonToggle`.
///
/// See the [component reference](https://material.io/develop/web/components/buttons/icon-buttons/#mdciconbuttontoggle-properties-and-methods)
/// and [source code](https://github.com/material-components/material-components-web/tree/master/packages/mdc-icon-button).
@JS('iconButton.MDCIconButtonToggle')
abstract class MDCIconButtonToggle extends MDCComponent {
  external static MDCIconButtonToggle attachTo(Element element);
  external factory MDCIconButtonToggle(Element element,
      [MDCFoundation foundation, args]);

  /// Get/set the toggle state.
  external bool get on;
  external void set on(bool value);

  external MDCRipple get ripple;
}

/// Data structure: {"detail": {"isOn": boolean}}
const mdcIconButtonToggleChangeEvent = 'MDCIconButtonToggle:change';
