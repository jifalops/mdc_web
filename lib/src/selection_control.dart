@JS('mdc.selectionControl')
library mdc_web_selection_control;

import 'package:js/js.dart';
import 'ripple.dart';

/// An interface for input controls.
///
/// Javascript: `mdc.selectionControl.MDCSelectionControl`.
///
/// * [Source Code](https://github.com/material-components/material-components-web/blob/master/packages/mdc-selection-control/index.js)
@JS('MDCSelectionControl')
abstract class SelectionControl {
  external Ripple get ripple;
}
