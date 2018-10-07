part of mdc_web;

/// A set of [MDCChip]s that controls how they interact.
///
/// Javascript: `mdc.chips.MDCChipSet`.
///
/// See the [component reference](https://material.io/develop/web/components/chips/#mdcchip-and-mdcchipset-properties-and-methods)
/// and [source code](https://github.com/material-components/material-components-web/tree/master/packages/mdc-chips).
@JS('chips.MDCChipSet')
abstract class MDCChipSet extends MDCComponent {
  external factory MDCChipSet(Element element,
      [MDCFoundation foundation, args]);
  external static MDCChipSet attachTo(Element element);

  @JS('chips')
  external List get _chips;
  List<MDCChip> get chips => List.from(_chips);

  external void addChip(Element chipEl);
  external bool getSelectedChipIds();
}

/// Encompasses the behavior of a single chip. All of MDCChip’s emitted events
/// bubble up through the DOM.
///
/// Javascript: `mdc.chips.MDCChip`.
///
/// See the [component reference](https://material.io/develop/web/components/chips/#mdcchip-and-mdcchipset-properties-and-methods)
/// and [source code](https://github.com/material-components/material-components-web/tree/master/packages/mdc-chips).
@JS('chips.MDCChip')
abstract class MDCChip extends MDCComponent {
  external factory MDCChip(Element element, [MDCFoundation foundation, args]);
  external static MDCChip attachTo(Element element);

  /// This will be the same as the id attribute on the root element. If an id is
  /// not provided, a unique one will be generated.
  external String get id;
  external bool get selected;
  external void set selected(bool value);
  external bool get shouldRemoveOnTrailingIconClick;
  external void set shouldRemoveOnTrailingIconClick(bool value);
  external MDCRipple get ripple;

  /// If [shouldRemoveOnTrailingIconClick] is set to false, you must manually
  /// call beginExit() on the chip to remove it.
  external void beginExit();

  /// Indicates the chip was interacted with (via click/tap or Enter key).
  ///
  /// `event.detail` contents: {chipId: string}
  static const interactionEvent = 'MDCChip:interaction';

  /// Indicates the chip’s selection state has changed (for choice/filter chips).
  ///
  /// `event.detail` contents: {chipId: string, selected: boolean}
  static const selectionEvent = 'MDCChip:selection';

  /// Indicates the chip is ready to be removed from the DOM.
  ///
  /// `event.detail` contents: {chipId: string, root: Element}
  static const removalEvent = 'MDCChip:removal';

  /// Indicates the chip’s trailing icon was interacted with (via click/tap or
  /// Enter key).
  ///
  /// `event.detail` contents: {chipId: string}
  static const trailingIconInteractionEvent = 'MDCChip:trailingIconInteraction';
}
