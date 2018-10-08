part of mdc_web;

/// An interface for input controls.
///
/// Javascript: `mdc.selectionControl.MDCSelectionControl`.
///
/// See the [source code](https://github.com/material-components/material-components-web/blob/master/packages/mdc-selection-control/index.js).
@JS('selectionControl.MDCSelectionControl')
abstract class MDCSelectionControl {
  external MDCRipple get ripple;
}

/// MDC Form Field aligns an MDC Web form field (for example, a checkbox) with
/// its label and makes it RTL-aware. It also activates a ripple effect upon
/// interacting with the label.
///
/// Javascript: `mdc.formField.MDCFormField`.
///
/// See the [component reference](https://material.io/develop/web/components/input-controls/form-fields/#mdcformfield-properties-and-methods)
/// and [source code](https://github.com/material-components/material-components-web/tree/master/packages/mdc-form-field/index.js.
@JS('formField.MDCFormField')
abstract class MDCFormField extends MDCComponent {
  external factory MDCFormField(Element element,
      [MDCFoundation foundation, args]);
  external static MDCFormField attachTo(Element element);

  external MDCSelectionControl get input;
  external void set input(MDCSelectionControl value);
}

/// A material design checkbox. To listen for changes use the native event.
///
/// Javascript: `mdc.checkbox.MDCCheckbox`.
///
/// See the [component reference](https://material.io/develop/web/components/input-controls/checkboxes/#mdccheckbox-properties-and-methods)
/// and [source code](https://github.com/material-components/material-components-web/tree/master/packages/mdc-checkbox/index.js).
@JS('checkbox.MDCCheckbox')
abstract class MDCCheckbox extends MDCComponent implements MDCSelectionControl {
  external factory MDCCheckbox(Element element,
      [MDCFoundation foundation, args]);
  external static MDCCheckbox attachTo(Element element);

  external bool get checked;
  external void set checked(bool value);
  external bool get indeterminate;
  external void set indeterminate(bool value);
  external bool get disabled;
  external void set disabled(bool value);
  external String get value;
  external void set value(String value);
}

/// Floating labels display the type of input a field requires.
///
/// Javascript: `mdc.floatingLabel.MDCFloatingLabel`.
///
/// See the [component reference](https://material.io/develop/web/components/input-controls/floating-label/#mdcfloatinglabel-properties-and-methods)
/// and [source code](https://github.com/material-components/material-components-web/tree/master/packages/mdc-floating-label/index.js).
@JS('floatingLabel.MDCFloatingLabel')
abstract class MDCFloatingLabel extends MDCComponent
    implements MDCSelectionControl {
  external factory MDCFloatingLabel(Element element,
      [MDCFoundation foundation, args]);
  external static MDCFloatingLabel attachTo(Element element);

  external void shake(bool shouldShake);
  external void float(bool shouldFloat);
  external num getWidth();
}

/// The line ripple is used to highlight user-specified input above it. When a
/// line ripple is active, the line’s color and thickness changes.
///
/// Javascript: `mdc.lineRipple.MDCLineRipple`.
///
/// See the [component reference](https://material.io/develop/web/components/input-controls/line-ripple/#mdclineripple-properties-and-methods)
/// and [source code](https://github.com/material-components/material-components-web/tree/master/packages/mdc-line-ripple/index.js).
@JS('lineRipple.MDCLineRipple')
abstract class MDCLineRipple extends MDCComponent {
  external factory MDCLineRipple(Element element,
      [MDCFoundation foundation, args]);
  external static MDCLineRipple attachTo(Element element);

  external void activate();
  external void deactivate();
  external void setRippleCenter(num xCoordinate);
}

/// The notched outline is a border around all sides of either a Text Field or
/// Select component. This is used for the Outlined variant of either a Text
/// Field or Select.
///
/// Javascript: `mdc.notchedOutline.MDCNotchedOutline`.
///
/// See the [component reference](https://material.io/develop/web/components/input-controls/notched-outline/#mdcnotchedoutline-properties-and-methods)
/// and [source code](https://github.com/material-components/material-components-web/tree/master/packages/mdc-notched-outline/index.js).
@JS('notchedOutline.MDCNotchedOutline')
abstract class MDCNotchedOutline {
  external factory MDCNotchedOutline(Element element,
      [MDCFoundation foundation, args]);
  external static MDCNotchedOutline attachTo(Element element);

  external void notch(num notchWidth, bool isRtl);
  external void closeNotch();
}

/// Radio buttons select one item out of a list.
///
/// Javascript: `mdc.radio.MDCRadio`.
///
/// See the [component reference](https://material.io/develop/web/components/input-controls/radio-buttons/#mdcradio-properties-and-methods)
/// and [source code](https://github.com/material-components/material-components-web/tree/master/packages/mdc-radio/index.js).
@JS('radio.MDCRadio')
abstract class MDCRadio extends MDCComponent implements MDCSelectionControl {
  external factory MDCRadio(Element element, [MDCFoundation foundation, args]);
  external static MDCRadio attachTo(Element element);

  external bool get checked;
  external void set checked(bool value);
  external bool get disabled;
  external void set disabled(bool value);
  external String get value;
  external void set value(String value);
}

/// A drop-down selection menu.
///
/// Javascript: `mdc.select.MDCSelect`.
///
/// See the [component reference](https://material.io/develop/web/components/input-controls/select-menus/#mdcselect-api)
/// and [source code](https://github.com/material-components/material-components-web/tree/master/packages/mdc-select/index.js).
@JS('select.MDCSelect')
abstract class MDCSelect extends MDCComponent implements MDCSelectionControl {
  external factory MDCSelect(Element element, [MDCFoundation foundation, args]);
  external static MDCSelect attachTo(Element element);

  external bool get disabled;
  external void set disabled(bool value);
  external String get value;
  external void set value(String value);

  /// Set to -1 if no option is currently selected.
  external num get selectedIndex;
  external void set selectedIndex(num value);
}

/// MDC Slider provides an implementation of the Material Design slider
/// component. It is modeled after the browser’s <input type="range"> element.
/// Sliders are fully RTL-aware, and conform to the WAI-ARIA slider authoring
/// practices.
///
/// Javascript: `mdc.slider.MDCSlider`.
///
/// See the [component reference](https://material.io/develop/web/components/input-controls/sliders/#mdc-slider-component-api)
/// and [source code](https://github.com/material-components/material-components-web/tree/master/packages/mdc-slider/index.js).
@JS('slider.MDCSlider')
abstract class MDCSlider extends MDCComponent implements MDCSelectionControl {
  external factory MDCSlider(Element element, [MDCFoundation foundation, args]);
  external static MDCSlider attachTo(Element element);

  external num get value;
  external void set value(num value);
  external num get min;
  external void set min(num value);
  external num get max;
  external void set max(num value);
  external num get step;
  external void set step(num value);
  external bool get disabled;
  external void set disabled(bool value);

  external void layout();
  external void stepUp([num amount = 1]);
  external void stepDown([num amount = 1]);

  /// Emitted whenever the slider value is changed by way of a user event, e.g.
  /// when a user is dragging the slider or changing the value using the arrow
  /// keys. The detail property of the event is set to the slider instance that
  /// was affected.
  static const inputEvent = 'MDCSlider:input';

  /// whenever the slider value is changed and committed by way of a user event,
  /// e.g. when a user stops dragging the slider or changes the value using the
  /// arrow keys. The detail property of the event is set to the slider instance
  /// that was affected.
  static const changeEvent = 'MDCSlider:change';
}

/// A toggle switch control.
///
/// Javascript: `mdc.switchControl.MDCSwitch`.
///
/// See the [component reference](https://material.io/develop/web/components/input-controls/switches/#mdcswitch-properties-and-methods)
/// and [source code](https://github.com/material-components/material-components-web/tree/master/packages/mdc-switch/index.js).
@JS('switchControl.MDCSwitch')
abstract class MDCSwitch extends MDCComponent implements MDCSelectionControl {
  external factory MDCSwitch(Element element, [MDCFoundation foundation, args]);
  external static MDCSwitch attachTo(Element element);

  external bool get checked;
  external void set checked(bool value);
  external bool get disabled;
  external void set disabled(bool value);
}

/// Text fields allow users to input, edit, and select text.
///
/// Javascript: `mdc.textField.MDCTextField`.
///
/// See the [component reference](https://material.io/develop/web/components/input-controls/text-field/#mdctextfield-properties-and-methods)
/// and [source code](https://github.com/material-components/material-components-web/tree/master/packages/mdc-textfield/index.js).
@JS('textField.MDCTextField')
abstract class MDCTextField extends MDCComponent
    implements MDCSelectionControl {
  external factory MDCTextField(Element element,
      [MDCFoundation foundation, args]);
  external static MDCTextField attachTo(Element element);

  external String get value;
  external void set value(String value);
  external bool get disabled;
  external void set disabled(bool value);
  external void set useNativeValidation(bool value);
  external void set helperTextContent(String value);
  external void set leadingIconAriaLabel(String value);
  external void set trailingIconAriaLabel(String value);
  external void set leadingIconContent(String value);
  external void set trailingIconContent(String value);
  external void set ripple(MDCRipple value);
  external bool get valid;
  external void set valid(bool value);

  external bool get required;
  external void set required(bool value);
  external num get minLength;
  external void set minLength(num value);
  external num get maxLength;
  external void set maxLength(num value);
  external String get min;
  external void set min(String value);
  external String get max;
  external void set max(String value);
  external String get step;
  external void set step(String value);
  external String get pattern;
  external void set pattern(String value);

  external void layout();
}

/// Omitting `mdc.textField.MDCTextFieldHelperText` and
/// `mdc.textField.MDCTextFieldIcon` because they only expose their foundation,
/// and this library currently only implements the base foundation, not the
/// foundations of components.
