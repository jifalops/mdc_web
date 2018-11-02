part of mdc_web;

/// An interface for input controls.
///
/// Javascript: `mdc.selectionControl.MDCSelectionControl`.
///
/// * [Source Code](https://github.com/material-components/material-components-web/blob/master/packages/mdc-selection-control/index.js)
abstract class MDCSelectionControl implements _SelectionControl {
  MDCRipple get ripple;
}

@JS('selectionControl.MDCSelectionControl')
abstract class _SelectionControl {
  external /*_Ripple*/ get ripple;
}
