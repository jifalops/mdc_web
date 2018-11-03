part of mdc_web;

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
class MDCSlider extends MDCComponent<_Slider> implements MDCSelectionControl {
  static MDCSlider attachTo(Element root) => MDCSlider._attach(root);
  MDCSlider._attach(Element root) : super._(_Slider.attachTo(root));

  MDCSlider(Element root, [foundation, args])
      : super._(_preserveUndefined(root, foundation, args));

  static _Slider _preserveUndefined(Element root, foundation, args) =>
      foundation == null
          ? _Slider(root)
          : args == null
              ? _Slider(root, foundation)
              : _Slider(root, foundation, args);

  num get value => _js.value;
  void set value(num value) => _js.value = value;
  num get min => _js.min;
  void set min(num value) => _js.min = value;
  num get max => _js.max;
  void set max(num value) => _js.max = value;
  num get step => _js.step;
  void set step(num value) => _js.step = value;
  bool get disabled => _js.disabled;
  void set disabled(bool value) => _js.disabled = value;

  void layout() => _js.layout();
  void stepUp([num amount = 1]) => _js.stepUp(amount);
  void stepDown([num amount = 1]) => _js.stepDown(amount);

  @override
  MDCRipple get ripple => MDCRipple._(_js.ripple);

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

@JS('slider.MDCSlider')
abstract class _Slider extends _Component implements _SelectionControl {
  external static _Slider attachTo(Element root);
  external factory _Slider(Element root, [foundation, args]);

  num value;
  num min;
  num max;
  num step;
  bool disabled;

  external void layout();
  external void stepUp([num amount = 1]);
  external void stepDown([num amount = 1]);
}
