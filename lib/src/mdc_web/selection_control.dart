@JS('mdc.selectionControl')
library selectionControl;

import 'dart:html';
import 'package:js/js.dart';
import 'ripple.dart';

export 'ripple.dart';

/// An interface for input controls.
///
/// Javascript: `mdc.selectionControl.MDCSelectionControl`.
///
/// * [Source Code](https://github.com/material-components/material-components-web/blob/master/packages/mdc-selection-control/index.js)
abstract class MDCSelectionControl {
  MDCRipple get ripple;
}

@JS('MDCSelectionControl')
abstract class SelectionControlComponent {
  external RippleComponent get ripple;
}
