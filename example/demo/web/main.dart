import 'dart:html';
import 'package:mdc_web/mdc_web.dart';
import 'package:js/js.dart';

void main() {
  /// Automatically creates MDC-Web components from html elements that have a
  /// `data-mdc-auto-init="<class>"` attribute.
  listen(document, autoInitEndEvent);
  autoInit();

  final topAppBar = MDCTopAppBar(querySelector('.mdc-top-app-bar'));
  listen(topAppBar, MDCTopAppBar.navEvent);
  topAppBar.emit(MDCTopAppBar.navEvent, {'a': 1, 'b': 2});

  final chipset = MDCChipSet(querySelector('.mdc-chip-set'));
  listen(chipset, MDCChip.interactionEvent);
  // listen(chipset, MDCChip.selectionEvent);
  listen<MDCChipSet>(chipset, MDCChip.removalEvent,
      (chipset) => print('Chips: ${chipset.chips.length}'));
  listen(chipset, MDCChip.trailingIconInteractionEvent);

  print('Chips: ${chipset.chips.length}');
  final div = DivElement()..text = 'new div';
  chipset.addChip(div, true);
  print('Chips: ${chipset.chips.length}');

  // var chips = mdc.chipSet.chips(chipset);

  /// Programmatically add a ripple to all elements with a class that includes
  /// "mdc-button".
  querySelectorAll('.mdc-button').forEach(MDCRipple.attachTo);

  addDyslexicOption();
  handleSelectedText();
}

/// Listen to events and print the event name and event details when they happen.
void listen<T>(T target, final String eventName, [void Function(T) callback]) {
  final handler = (Event event) {
    if (event is CustomEvent)
      print('Event "$eventName": ${event.detail}');
    else
      print('Event "$eventName": ${stringify(event)}');

    if (callback != null) callback(target);
  };
  if (target is Node)
    target.addEventListener(eventName, handler);
  else if (target is MDCComponent) target.listen(eventName, handler);
}

/// I must be bored.
void addDyslexicOption() {
  final dyslexic = MDCSwitch(querySelector('.mdc-switch'));
  dyslexic.listen('change', (e) {
    document.body.className = dyslexic.checked ? 'dyslexic' : '';
  });
}

/// Because why not?
void handleSelectedText() {
  document.addEventListener('mouseup', (event) {
    final sel = window.getSelection();
    if (sel.toString().length > 0) {
      final range = sel.getRangeAt(0).cloneRange();
      try {
        range.surroundContents(SpanElement()..className = 'selected-text');
        sel.removeAllRanges();
        sel.addRange(range);
      } catch (e) {}
    }
  });

  document.addEventListener('mousedown', (event) {
    if (window.getSelection().toString().length == 0) {
      querySelectorAll('.selected-text').forEach((el) {
        el.replaceWith(Text(el.text));
      });
    }
  });
}
