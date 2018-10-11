@JS('mdc.radio')
library mdc_web_radio;

import 'dart:html';
import 'package:js/js.dart';
import 'base.dart';
import 'selection_control.dart';

/// Radio buttons select one item out of a list.
///
/// Javascript: `mdc.radio.MDCRadio`.
///
/// See the [component reference](https://material.io/develop/web/components/input-controls/radio-buttons/#mdcradio-properties-and-methods)
/// and [source code](https://github.com/material-components/material-components-web/tree/master/packages/mdc-radio/index.js).
@JS('MDCRadio')
abstract class Radio extends Component implements SelectionControl {
  external static Radio attachTo(Element element);
  external factory Radio(Element element, [Foundation foundation, args]);

  external bool get checked;
  external void set checked(bool value);
  external bool get disabled;
  external void set disabled(bool value);
  external String get value;
  external void set value(String value);
}
