part of mdc_web;

/// MDC Form Field aligns an MDC Web form field (for example, a checkbox) with
/// its label and makes it RTL-aware. It also activates a ripple effect upon
/// interacting with the label.
///
/// Javascript: `mdc.formField.MDCFormField`.
///
/// * [Component Reference](https://material.io/develop/web/components/input-controls/form-fields/#mdcformfield-properties-and-methods)
/// * [Source Code](https://github.com/material-components/material-components-web/tree/master/packages/mdc-form-field/index.js.
abstract class MDCFormField extends MDCComponent<_FormField> {
  // static MDCFormField attachTo(Element root) => MDCFormField._attach(root);
  MDCFormField._attach(Element root) : super._(_FormField.attachTo(root));

  MDCFormField(Element root, [foundation, args])
      : super._(_preserveUndefined(root, foundation, args));

  static _FormField _preserveUndefined(Element root, foundation, args) =>
      foundation == null
          ? _FormField(root)
          : args == null
              ? _FormField(root, foundation)
              : _FormField(root, foundation, args);

  MDCSelectionControl get input;
  void set input(MDCSelectionControl value);
}

@JS('formField.MDCFormField')
abstract class _FormField extends _Component {
  external static _FormField attachTo(Element root);
  external factory _FormField(Element root, [foundation, args]);

  external _SelectionControl get input;
  external void set input(_SelectionControl value);
}
