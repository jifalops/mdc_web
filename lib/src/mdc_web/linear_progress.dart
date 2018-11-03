part of mdc_web;

/// A linear progress indicator.
///
/// Javascript: `mdc.linearProgress.MDCLinearProgress`.
///
/// * [Design Guidelines](https://material.io/go/design-progress-indicators)
/// * [Component Reference](https://material.io/develop/web/components/linear-progress/#mdclinearprogress-api)
/// * [Demo](https://material-components.github.io/material-components-web-catalog/#/component/linear-progress-indicator)
/// * [Source Code](https://github.com/material-components/material-components-web/tree/master/packages/mdc-linear-progress/index.js)
class MDCLinearProgress extends MDCComponent {
  static MDCLinearProgress attachTo(Element root) =>
      MDCLinearProgress._attach(root);
  MDCLinearProgress._attach(Element root)
      : _js = _LinearProgress.attachTo(root);

  MDCLinearProgress(Element root, [foundation, args])
      : _js = _preserveUndefined(root, foundation, args);

  static _LinearProgress _preserveUndefined(Element root, foundation, args) =>
      foundation == null
          ? _LinearProgress(root)
          : args == null
              ? _LinearProgress(root, foundation)
              : _LinearProgress(root, foundation, args);

  _LinearProgress get js => _js;
  final _LinearProgress _js;

  void set determinate(bool value) => js.determinate = value;

  /// Value should be between 0 and 1, inclusive.
  void set progress(num value) => js.progress = value;

  /// Value should be between 0 and 1, inclusive.
  void set buffer(num value) => js.buffer = value;

  void set reverse(bool value) => js.reverse = value;

  void open() => js.open();
  void close() => js.close();
}

@JS('linearProgress.MDCLinearProgress')
abstract class _LinearProgress extends _Component {
  external static _LinearProgress attachTo(Element root);
  external factory _LinearProgress(Element root, [foundation, args]);

  external void set determinate(bool value);

  /// Value should be between 0 and 1, inclusive.
  external void set progress(num value);

  /// Value should be between 0 and 1, inclusive.
  external void set buffer(num value);

  external void set reverse(bool value);

  external void open();
  external void close();
}
