import 'dart:html';
import 'package:mdc_web/mdc_web.dart';
import 'package:js/js.dart';

void main() {
  /// Automatically creates MDC-Web components from html elements that have a
  /// `data-mdc-auto-init="<class>"` attribute.
  listen(document, mdcAutoInitEndEvent);
  mdcAutoInit();

  final topAppBar = MDCTopAppBar(querySelector('.mdc-top-app-bar'));
  listen(topAppBar, mdcTopAppBarNavEvent);
  topAppBar.emit(mdcTopAppBarNavEvent, {'a': 1, 'b': 2});

  final chipset = MDCChipSet(querySelector('.mdc-chip-set'));
  listen(chipset, mdcChipInteractionEvent);
  // listen(chipset, mdcChipSelectionEvent);
  listen(chipset, mdcChipRemovalEvent,
      (chipset) => print('Chips: ${mdcChipSetChips(chipset).length}'));
  listen(chipset, mdcChipTrailingIconInteractionEvent);
  chipset.addChip(DivElement()..text = 'new div');

  /// Programmatically add a ripple to all elements with a class that includes
  /// "mdc-button".
  querySelectorAll('.mdc-button').forEach(MDCRipple.attachTo);
}

/// Listen to events and print the event name and event details when they happen.
void listen(Object target, final String eventName,
    [void Function(Object) callback]) {
  final handler = (Event event) {
    if (event is CustomEvent)
      print('Event "$eventName": ${event.detail}');
    else
      print('Event "$eventName": ${stringify(event)}');
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
  else if (target is MDCComponent)
    mdcListen(target, eventName, (event) {
      handler(event);
      if (callback != null) callback(target);
    });
  else if (target is Iterable<MDCComponent>)
    target.forEach((comp) => mdcListen(comp, eventName, (event) {
          handler(event);
          if (callback != null) callback(comp);
        }));
}
