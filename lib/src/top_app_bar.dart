part of mdc_web;

/// A Top app bar acts as a container for items such as application title,
/// navigation icon, and action items.
///
/// Javascript: `mdc.topAppBar.MDCTopAppBar`.
///
/// See the [component reference](https://material.io/develop/web/components/top-app-bar/#mdctopappbar-properties-and-methods)
/// and [source code](https://github.com/material-components/material-components-web/blob/master/packages/mdc-top-app-bar/index.js).
@JS('topAppBar.MDCTopAppBar')
abstract class MDCTopAppBar extends MDCComponent {
  external static MDCTopAppBar attachTo(Element element);
  external factory MDCTopAppBar(Element element,
      [MDCFoundation foundation, args]);

  /// The default scroll target is `window`.
  external void setScrollTarget(Element target);
}

/// Emits when the navigation icon is clicked.
const mdcTopAppBarNavEvent = 'MDCTopAppBar:nav';
