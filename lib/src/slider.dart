@JS('mdc.slider')
library mdc_web_slider;

import 'dart:html';
import 'package:js/js.dart';
import 'base.dart';
import 'selection_control.dart';

/// MDC Slider provides an implementation of the Material Design slider
/// component. It is modeled after the browser’s <input type="range"> element.
/// Sliders are fully RTL-aware, and conform to the WAI-ARIA slider authoring
/// practices.
///
/// Javascript: `mdc.slider.MDCSlider`.
///
/// See the [component reference](https://material.io/develop/web/components/input-controls/sliders/#mdc-slider-component-api)
/// and [source code](https://github.com/material-components/material-components-web/tree/master/packages/mdc-slider/index.js).
@JS('MDCSlider')
abstract class Slider extends Component implements SelectionControl {
  external static Slider attachTo(Element element);
  external factory Slider(Element element, [Foundation foundation, args]);

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
}

/// [Slider] events and helpers.
class slider {
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
