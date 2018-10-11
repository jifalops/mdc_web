import 'dart:html';
import 'package:mdc_web/mdc_web.dart' as mdc;
import 'package:js/js.dart';

void main() {
  /// Automatically creates MDC-Web components from html elements that have a
  /// `data-mdc-auto-init="<class>"` attribute.
  listen(document, mdc.autoInitEndEvent);
  mdc.autoInit();

  final topAppBar = mdc.TopAppBar(querySelector('.mdc-top-app-bar'));
  listen(topAppBar, mdc.topAppBar.navEvent);
  topAppBar.emit(mdc.topAppBar.navEvent, {'a': 1, 'b': 2});

  final chipset = mdc.ChipSet(querySelector('.mdc-chip-set'));
  listen(chipset, mdc.chip.interactionEvent);
  // listen(chipset, mdcChipSelectionEvent);
  listen(chipset, mdc.chip.removalEvent,
      (chipset) => print('Chips: ${(chipset as mdc.ChipSet).chips.length}'));
  listen(chipset, mdc.chip.trailingIconInteractionEvent);
  print('Chips: ${chipset.chips.length}');
  final div = DivElement()..text = 'new div';
  chipset.addChip(div);
  print('Chips: ${chipset.chips.length}');
  chipset.root_.append(div);

  var chips = mdc.chipSet.chips(chipset);

  /// Programmatically add a ripple to all elements with a class that includes
  /// "mdc-button".
  querySelectorAll('.mdc-button').forEach(mdc.Ripple.attachTo);
}

/// Listen to events and print the event name and event details when they happen.
void listen(Object target, final String eventName,
    [void Function(Object) callback]) {
  final handler = (Event event) {
    if (event is CustomEvent)
      print('Event "$eventName": ${event.detail}');
    else
      print('Event "$eventName": ${mdc.stringify(event)}');
  };
  if (target is Node)
    target.addEventListener(eventName, (event) {
      handler(event);
      if (callback != null) callback(target);
    });
  else if (target is Iterable<Node>)
    target.forEach((node) => node.addEventListener(eventName, (event) {
          handler(event);
          if (callback != null) callback(node);
        }));
  else if (target is mdc.Component)
    listen(target, eventName, (event) {
      handler(event);
      if (callback != null) callback(target);
    });
  else if (target is Iterable<mdc.Component>)
    target.forEach((comp) => listen(comp, eventName, (event) {
          handler(event);
          if (callback != null) callback(comp);
        }));
}
