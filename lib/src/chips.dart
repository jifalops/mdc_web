@JS('mdc.chips')
library mdc_web_chips;

import 'dart:html';
import 'package:js/js.dart';
import 'base.dart';
import 'ripple.dart';

/// A set of [Chip]s that controls how they interact.
///
/// Javascript: `mdc.chips.MDCChipSet`.
///
/// See the [component reference](https://material.io/develop/web/components/chips/#mdcchip-and-mdcchipset-properties-and-methods)
/// and [source code](https://github.com/material-components/material-components-web/tree/master/packages/mdc-chips/chip-set/index.js).
@JS('MDCChipSet')
abstract class ChipSet extends Component {
  external static ChipSet attachTo(Element element);
  external factory ChipSet(Element element, [Foundation foundation, args]);

  external List get chips;

  external void addChip(Element chipEl);
  // TODO: Not in 0.40.0
  // external List getSelectedChipIds();
}

/// [ChipSet] events and helpers.
class chipSet {
  /// Casts [ChipSet.chips].
  static List<Chip> chips(ChipSet chipset) => List.from(chipset.chips);

  // TODO: Not in 0.40.0
  // static List<int> selectedChipIds(ChipSet chipset) =>
  //     List.from(chipset.getSelectedChipIds());
}

/// Encompasses the behavior of a single chip. All of MDCChip’s emitted events
/// bubble up through the DOM.
///
/// Javascript: `mdc.chips.MDCChip`.
///
/// See the [component reference](https://material.io/develop/web/components/chips/#mdcchip-and-mdcchipset-properties-and-methods)
/// and [source code](https://github.com/material-components/material-components-web/tree/master/packages/mdc-chips/chip/index.js).
@JS('MDCChip')
abstract class Chip extends Component {
  external static Chip attachTo(Element element);
  external factory Chip(Element element, [Foundation foundation, args]);

  /// This will be the same as the id attribute on the root element. If an id is
  /// not provided, a unique one will be generated.
  external String get id;
  external bool get selected;
  external void set selected(bool value);
  external bool get shouldRemoveOnTrailingIconClick;
  external void set shouldRemoveOnTrailingIconClick(bool value);
  external Ripple get ripple;

  /// If [shouldRemoveOnTrailingIconClick] is set to false, you must manually
  /// call beginExit() on the chip to remove it.
  external void beginExit();
}

/// [Chip] events and helpers.
class chip {
  /// Indicates the chip was interacted with (via click/tap or Enter key).
  ///
  /// `event.detail` contents: {chipId: string}
  static const interactionEvent = 'MDCChip:interaction';

  /// Indicates the chip’s selection state has changed (for choice/filter chips).
  ///
  /// `event.detail` contents: {chipId: string, selected: boolean}
// TODO: Not part of v0.40.0.
// static const selectionEvent = 'MDCChip:selection';

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
