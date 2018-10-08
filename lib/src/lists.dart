part of mdc_web;

/// Lists are continuous, vertical indexes of text or images.
///
/// Javascript: `mdc.list.MDCList`.
///
/// See the [component reference](https://material.io/develop/web/components/lists/)
/// and [source code](https://github.com/material-components/material-components-web/blob/master/packages/mdc-list/index.js).
@JS('list.MDCList')
abstract class MDCList extends MDCComponent {
  external factory MDCList(Element element, [MDCFoundation foundation, args]);
  external static MDCList attachTo(Element element);

  external void set vertical(bool value);
  external void set wrapFocus(bool value);
  external void set singleSelection(bool value);
  external void set selectedIndex(num value);

  @JS('listElements')
  external List get _listElements;
  List<Element> get listElements => List.from(_listElements);

  external void layout();
}
