import 'base.dart';
import 'selection_control.dart';
import 'mdc_web/checkbox.dart';

/// A material design checkbox. To listen for changes, use the native event.
///
/// Javascript: `mdc.checkbox.MDCCheckbox`.
///
/// * [Design Guidelines](https://material.io/go/design-checkboxes)
/// * [Component Reference](https://material.io/develop/web/components/input-controls/checkboxes/#mdccheckbox-properties-and-methods)
/// * [Demo](https://material-components.github.io/material-components-web-catalog/#/component/checkbox)
/// * [Source Code](https://github.com/material-components/material-components-web/tree/master/packages/mdc-checkbox/index.js)
class MDCCheckbox extends MDCComponent implements MDCSelectionControl {
  static MDCCheckbox attachTo(Element root) => MDCCheckbox._attach(root);
  MDCCheckbox._attach(Element root) : _js = CheckboxComponent.attachTo(root);
  MDCCheckbox(Element root, [MDCFoundation foundation, args])
      : _js = _preserveUndefined(root, foundation, args);

  @override
  CheckboxComponent get js => _js;
  final CheckboxComponent _js;

  bool get checked => js.checked;
  void set checked(bool value) => js.checked = value;
  bool get indeterminate => js.indeterminate;
  void set indeterminate(bool value) => js.indeterminate = value;
  bool get disabled => js.disabled;
  void set disabled(bool value) => js.disabled = value;
  String get value => js.value;
  void set value(String value) => js.value = value;
  @override
  MDCRipple get ripple => MDCRipple.fromComponent(js.ripple);
}

CheckboxComponent _preserveUndefined(
        Element root, MDCFoundation foundation, args) =>
    foundation == null
        ? CheckboxComponent(root)
        : args == null
            ? CheckboxComponent(root, foundation)
            : CheckboxComponent(root, foundation, args);
