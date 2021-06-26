@JS('mdc.chips')
library chips;

import 'dart:html';
import 'package:js/js.dart';
import 'base.dart';
import 'ripple.dart';

/// A set of [MDCChip]s that controls how they interact.
///
/// Javascript: `mdc.chips.MDCChipSet`.
///
/// * [Design Guidelines](https://material.io/go/design-chips)
/// * [Component Reference](https://material.io/develop/web/components/chips/#mdcchip-and-mdcchipset-properties-and-methods)
/// * [Demo](https://material-components.github.io/material-components-web-catalog/#/component/chips)
/// * [Source Code](https://github.com/material-components/material-components-web/tree/master/packages/mdc-chips/chip-set/index.js)
@JS('MDCChipSet')
abstract class ChipSetComponent extends Component {
  external static ChipSetComponent attachTo(Element root);
  external factory ChipSetComponent(Element root,
      [MDCFoundation? foundation, args]);

  external List get chips;

  external void addChip(Element chipEl);
  external List getSelectedChipIds();
}

/// Encompasses the behavior of a single chip. All of MDCChip’s emitted events
/// bubble up through the DOM.
///
/// Javascript: `mdc.chips.MDCChip`.
///
/// * [Design Guidelines](https://material.io/go/design-chips)
/// * [Component Reference](https://material.io/develop/web/components/chips/#mdcchip-and-mdcchipset-properties-and-methods)
/// * [Demo](https://material-components.github.io/material-components-web-catalog/#/component/chips)
/// * [Source Code](https://github.com/material-components/material-components-web/tree/master/packages/mdc-chips/chip/index.js)
@JS('MDCChip')
abstract class ChipComponent extends Component {
  external static ChipComponent attachTo(Element root);
  external factory ChipComponent(Element root,
      [MDCFoundation? foundation, args]);

  /// This will be the same as the id attribute on the root element. If an id is
  /// not provided, a unique one will be generated.
  external String get id;
  bool? selected;
  bool? shouldRemoveOnTrailingIconClick;
  external RippleComponent get ripple;

  /// If [shouldRemoveOnTrailingIconClick] is set to false, you must manually
  /// call beginExit() on the chip to remove it.
  external void beginExit();
}
