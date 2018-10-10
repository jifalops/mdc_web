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
