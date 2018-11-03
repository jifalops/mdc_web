part of mdc_web;

/// MDC Form Field aligns an MDC Web form field (for example, a checkbox) with
/// its label and makes it RTL-aware. It also activates a ripple effect upon
/// interacting with the label.
///
/// Javascript: `mdc.formField.MDCFormField`.
///
/// * [Component Reference](https://material.io/develop/web/components/input-controls/form-fields/#mdcformfield-properties-and-methods)
/// * [Source Code](https://github.com/material-components/material-components-web/tree/master/packages/mdc-form-field/index.js.
class MDCFormField extends MDCComponent {
  static MDCFormField attachTo(Element root) => MDCFormField._attach(root);
  MDCFormField._attach(Element root) : _js = FormFieldComponent.attachTo(root);

  MDCFormField(Element root, [foundation, args])
      : _js = _preserveUndefined(root, foundation, args);

  static FormFieldComponent _preserveUndefined(Element root, foundation, args) =>
      foundation == null
          ? FormFieldComponent(root)
          : args == null
              ? FormFieldComponent(root, foundation)
              : FormFieldComponent(root, foundation, args);

  FormFieldComponent get js => _js;
  final FormFieldComponent _js;

  MDCSelectionControl get input => js.input;
  void set input(MDCSelectionControl value) => js.input = value;
}

@JS('formField.MDCFormField')
abstract class FormFieldComponent extends Component {
  external static FormFieldComponent attachTo(Element root);
  external factory FormFieldComponent(Element root, [foundation, args]);

  dynamic /*_SelectionControl*/ input;
}
