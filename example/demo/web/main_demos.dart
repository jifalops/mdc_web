import 'dart:html';
import 'package:mdc_web/mdc_web.dart';
import 'main.dart' show listen;

void buttons() {
  querySelectorAll('.mdc-button').forEach(MDCRipple.attachTo);
}

void topAppBar() {
  final topAppBar = MDCTopAppBar(querySelector('.mdc-top-app-bar'));
  listen(topAppBar, MDCTopAppBar.navEvent);
  topAppBar.emit(MDCTopAppBar.navEvent, {'a': 1, 'b': 2});
}

// abstract class ComponentDemo {
//   const ComponentDemo(this.id, this.title, this.demoUrl);
//   final String id, title, demoUrl;

//   List<Demo> get demos;
//   void init();

//   void attach() {
//     content.appendHtml(toString(), treeSanitizer: NodeTreeSanitizer.trusted);
//     init();
//   }

//   @override
//   toString() => '''
// <section id="$id">
//   <header>
//     <h3>$title</h3>
//     <a href="$demoUrl">demo</a>
//   </header>
//   <div class="demos">
//   ${demos.join('')}
//   </div>
// </section>
// ''';
// }

// class Demo {
//   const Demo(this.id, this.html, [this.actions = const []]);
//   final String id, html;
//   final List<String> actions;

//   @override
//     String toString() => '''
// <div id="$id" class="demo">
//   <div class="actions">
//     ${actions.forEach((button) => button.toString())}
//   </div>
//   <div class="content">
//     $html
//   </div>
// </div>
// ''';
// }

// class ButtonDemo extends ComponentDemo {
//   const ButtonDemo()
//       : super('buttons', 'Buttons',
//             'https://material-components.github.io/material-components-web-catalog/#/component/button');
//    @override
//   List<Demo> get demos => [
//         // ComponentDemo('choice-chips',
//         // choiceChips([chip, leadingIcon, trailingIcon, checkMark, selected]),
//         // []
//         // ),
//       ];

//   @override
//   void init() {

//   }

//   static String button(String name) => '''
// <button class="mdc-button">
//   $name
// </button>
// ''';

//   static const basic = '''
// <button class="mdc-button">
//   Button
// </button>
// ''';
//   static const rasied = '''
// <button class="mdc-button mdc-button--raised">
//   Button
// </button>
// ''';
//   static const outline = '''
// <button class="mdc-button mdc-button--outlined">
//   Button
// </button>
// ''';
// static const icon = '''
// <button class="mdc-button">
//   <i class="material-icons mdc-button__icon" aria-hidden="true">favorite</i>
//   Button
// </button>
// ''';
// static const disabled = '''
// <button class="mdc-button" disabled>
//   Button
// </button>
// ''';
// }

// class ChipsDemo extends ComponentDemo {
//   const ChipsDemo()
//       : super('chips', 'Chips',
//             'https://material-components.github.io/material-components-web-catalog/#/component/chips');
//   @override
//   List<Demo> get demos => [
//         // Demo('choice-chips',
//         // choiceChips([chip, leadingIcon, trailingIcon, checkMark, selected]),
//         // []
//         // ),
//         // filterChips([chip, leadingIcon, trailingIcon, checkMark, selected]),
//         // inputChips([chip, leadingIcon, trailingIcon, checkMark, selected])
//       ];

//   @override
//   void init() {
//     final chipsets =
//         querySelectorAll('.mdc-chip-set').map((el) => MDCChipSet(el));
//     chipsets.forEach((chipset) => listen(chipset, MDCChip.interactionEvent));
//     // chipsets.forEach((chipset) => listen(chipset, MDCChip.selectionEvent));
//     chipsets.forEach((chipset) => listen(chipset, MDCChip.removalEvent));
//     chipsets.forEach(
//         (chipset) => listen(chipset, MDCChip.trailingIconInteractionEvent));

//     // print('Chips: ${chipset.chips.length}');
//     // final div = DivElement()
//     //   ..text = 'new div'
//     //   ..className = 'mdc-chip';
//     // chipset.addChip(div, true);
//     // print('Chips: ${chipset.chips.length}');
//   }

//   static List<ButtonElement> get actions => [
//     // ButtonElement()..setInnerHtml(ButtonDemo.button('Add'), treeSanitizer: NodeTreeSanitizer.trusted)..addEventListener('click', (e) => e.
//   ];

//   static const chip = '''
// <div class="mdc-chip" tabindex="0">
//   <div class="mdc-chip__text">Chip content</div>
// </div>
// ''';
//   static const leadingIcon = '''
// <div class="mdc-chip">
//   <i class="material-icons mdc-chip__icon mdc-chip__icon--leading">event</i>
//   <div class="mdc-chip__text">Add to calendar</div>
// </div>
// ''';
//   static const trailingIcon = '''
// <div class="mdc-chip">
//   <div class="mdc-chip__text">Jane Smith</div>
//   <i class="material-icons mdc-chip__icon mdc-chip__icon--trailing" tabindex="0" role="button">cancel</i>
// </div>
// ''';
//   static const checkMark = '''
// div class="mdc-chip">
//   <div class="mdc-chip__checkmark" >
//     <svg class="mdc-chip__checkmark-svg" viewBox="-2 -3 30 30">
//       <path class="mdc-chip__checkmark-path" fill="none" stroke="black"
//             d="M1.73,12.91 8.1,19.28 22.79,4.59"/>
//     </svg>
//   </div>
//   <div class="mdc-chip__text">Filterable content</div>
// </div>
// ''';
//   static const selected = '''
// <div class="mdc-chip mdc-chip--selected">
//   <div class="mdc-chip__text">Selected</div>
// </div>
// ''';

//   static String choiceChips(List<String> chips) => '''
// <div class="mdc-chip-set mdc-chip-set--choice">
//   ${chips.join('')}
// </div>
// ''';
//   static String filterChips(List<String> chips) => '''
// <div class="mdc-chip-set mdc-chip-set--filter">
//   ${chips.join('')}
// </div>
// ''';
//   static String inputChips(List<String> chips) => '''
// <div class="mdc-chip-set mdc-chip-set--input">
//   ${chips.join('')}
// </div>
// ''';
// }

void snackbar() {
  final snackbar = MDCSnackbar(querySelector('.mdc-snackbar')!)
    ..labelText = 'hi'
    ..actionButtonText = 'click'
    ..listen('MDCSnackbar:closing', (e) {
      print('clicked');
    });
  snackbar.open();
}
