import 'dart:async';
import 'dart:html';
import 'src/components/button.dart';

export 'src/components/base.dart';
export 'src/components/button.dart';

void registerMdcWebComponents() {
  document.registerElement(MdcButton.tag, MdcButton);
  // window.customElements.define(MdcButton.tag, MdcButton);
}

Future<void> afterNextRender() async {
  await window.animationFrame;
  await Future.microtask(() {});
  // await Future.delayed(Duration(milliseconds: 0));
}
