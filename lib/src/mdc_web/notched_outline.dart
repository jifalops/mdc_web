@JS('mdc.notchedOutline')
library notched_outline;

import 'dart:html';
import 'package:js/js.dart';
import 'base.dart';

/// The notched outline is a border around all sides of either a Text Field or
/// Select component. This is used for the Outlined variant of either a Text
/// Field or Select.
///
/// Javascript: `mdc.notchedOutline.MDCNotchedOutline`.
///
/// * [Component Reference](https://material.io/develop/web/components/input-controls/notched-outline/#mdcnotchedoutline-properties-and-methods)
/// * [Source Code](https://github.com/material-components/material-components-web/tree/master/packages/mdc-notched-outline/index.js)
@JS('MDCNotchedOutline')
abstract class NotchedOutlineComponent extends Component {
  external static NotchedOutlineComponent attachTo(Element root);
  external factory NotchedOutlineComponent(Element root,
      [MDCFoundation foundation, args]);

  external void notch(num notchWidth, bool isRtl);
  external void closeNotch();
}
