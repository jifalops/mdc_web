@JS('mdc.slider')
library slider;

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
/// * [Design Guidelines](https://material.io/go/design-sliders)
/// * [Component Reference](https://material.io/develop/web/components/input-controls/sliders/#mdc-slider-component-api)
/// * [Demo](https://material-components.github.io/material-components-web-catalog/#/component/slider)
/// * [Source Code](https://github.com/material-components/material-components-web/tree/master/packages/mdc-slider/index.js)
@JS('MDCSlider')
abstract class SliderComponent extends Component
    implements SelectionControlComponent {
  external static SliderComponent attachTo(Element root);
  external factory SliderComponent(Element root,
      [MDCFoundation foundation, args]);

  num value;
  num min;
  num max;
  num step;
  bool disabled;

  external void layout();
  external void stepUp([num amount = 1]);
  external void stepDown([num amount = 1]);
}
