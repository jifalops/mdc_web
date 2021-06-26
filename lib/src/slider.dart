import 'base.dart';
import 'selection_control.dart';
import 'mdc_web/slider.dart';

/// MDC Slider provides an implementation of the Material Design slider
/// component. It is modeled after the browser’s <input type="range"> element.
/// Sliders are fully RTL-aware, and conform to the WAI-ARIA slider authoring
/// practices.
///
/// Javascript: `mdc.slider.MDCSlider`.
///
/// * [Design Guidelines](https://material.io/go/design-sliders)
/// * [Component Reference](https://material.io/develop/web/components/input-controls/sliders/#mdc-slider-component-api)
/// * [Demo](https://material-components.github.io/material-components-web-catalog/#/component/slider)
/// * [Source Code](https://github.com/material-components/material-components-web/tree/master/packages/mdc-slider/index.js)
class MDCSlider extends MDCComponent implements MDCSelectionControl {
  static MDCSlider attachTo(Element root) => MDCSlider._attach(root);
  MDCSlider._attach(Element root) : _js = SliderComponent.attachTo(root);

  MDCSlider(Element root, [MDCFoundation? foundation, args])
      : _js = _preserveUndefined(root, foundation, args);

  SliderComponent get js => _js;
  final SliderComponent _js;

  num? get value => js.value;
  set value(num? value) => js.value = value;
  num? get min => js.min;
  set min(num? value) => js.min = value;
  num? get max => js.max;
  set max(num? value) => js.max = value;
  num? get step => js.step;
  set step(num? value) => js.step = value;
  bool? get disabled => js.disabled;
  set disabled(bool? value) => js.disabled = value;

  void layout() => js.layout();
  void stepUp([num amount = 1]) => js.stepUp(amount);
  void stepDown([num amount = 1]) => js.stepDown(amount);

  @override
  MDCRipple get ripple => MDCRipple.fromComponent(js.ripple!);

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

SliderComponent _preserveUndefined(
        Element root, MDCFoundation? foundation, args) =>
    foundation == null
        ? SliderComponent(root)
        : args == null
            ? SliderComponent(root, foundation)
            : SliderComponent(root, foundation, args);
