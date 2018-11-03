part of mdc_web;

/// A Top app bar acts as a container for items such as application title,
/// navigation icon, and action items.
///
/// Javascript: `mdc.topAppBar.MDCTopAppBar`.
///
/// * [Design Guidelines](https://material.io/go/design-app-bar-top)
/// * [Component Reference](https://material.io/develop/web/components/top-app-bar/#mdctopappbar-properties-and-methods)
/// * [Demo](https://material-components.github.io/material-components-web-catalog/#/component/top-app-bar)
/// * [Source Code](https://github.com/material-components/material-components-web/blob/master/packages/mdc-top-app-bar/index.js)
class MDCTopAppBar extends MDCComponent {
  static MDCTopAppBar attachTo(Element root) => MDCTopAppBar._attach(root);
  MDCTopAppBar._attach(Element root) : _js = _TopAppBar.attachTo(root);

  MDCTopAppBar(Element root, [foundation, args])
      : _js = _preserveUndefined(root, foundation, args);

  static _TopAppBar _preserveUndefined(Element root, foundation, args) =>
      foundation == null
          ? _TopAppBar(root)
          : args == null
              ? _TopAppBar(root, foundation)
              : _TopAppBar(root, foundation, args);

  _TopAppBar get js => _js;
  final _TopAppBar _js;

  /// The default scroll target is `window`.
  void setScrollTarget(Element target) => js.setScrollTarget(target);

  /// Emits when the navigation icon is clicked.
  static const navEvent = 'MDCTopAppBar:nav';
}

@JS('topAppBar.MDCTopAppBar')
abstract class _TopAppBar extends _Component {
  external static _TopAppBar attachTo(Element root);
  external factory _TopAppBar(Element root, [foundation, args]);

  /// The default scroll target is `window`.
  external void setScrollTarget(Element target);
}
