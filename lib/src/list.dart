part of mdc_web;

/// Lists are continuous, vertical indexes of text or images.
///
/// Javascript: `mdc.list.MDCList`.
///
/// See the [component reference](https://material.io/develop/web/components/lists/)
/// and [source code](https://github.com/material-components/material-components-web/blob/master/packages/mdc-list/index.js).
@JS('list.MDCList')
abstract class MDCList extends MDCComponent {
  external static MDCList attachTo(Element element);
  external factory MDCList(Element element, [MDCFoundation foundation, args]);

  external void set vertical(bool value);
  external void set wrapFocus(bool value);
  external void set singleSelection(bool value);
  external void set selectedIndex(num value);

  external List get listElements;

  external void layout();
}

/// Wrapper for [MDCList.listElements].
List<Element> mdcListListElements(MDCList list) => List.from(list.listElements);
