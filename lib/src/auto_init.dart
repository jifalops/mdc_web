part of mdc_web;

/// Automatically create MDC-Web components from html elements that have a
/// `data-mdc-auto-init="MDC<component>"` attribute.
///
/// Javascript: `mdc.autoInit()`.
///
/// See the [component reference](https://material.io/develop/web/components/auto-init/)
/// and [source code](https://github.com/material-components/material-components-web/tree/master/packages/mdc-auto-init/index.js).
@JS('autoInit')
external void mdcAutoInit([Node root, Function warn]);

/// Triggered when initialization of all components is complete.
const mdcAutoInitEndEvent = 'MDCAutoInit:End';
