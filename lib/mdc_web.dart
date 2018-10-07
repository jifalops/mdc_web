/// Dart wrapper for the `material-components-web` Javascript library.
///
/// Packages without javascript wrappers here are implemented in (s)css:
/// * animation
/// * buttons
/// * card
/// * elevation
/// * grid lists
/// * image list
/// * layout grid
/// *
@JS('mdc')
library mdc_web;

import 'dart:html';
import 'package:js/js.dart';
import 'package:mdc_web/src/util.dart';

export 'package:mdc_web/src/util.dart';

part 'src/animation.dart';
part 'src/auto_init.dart';
part 'src/base.dart';
part 'src/chips.dart';
part 'src/dialog.dart';
part 'src/dom.dart';
part 'src/drawer.dart';
part 'src/icon_button.dart';
part 'src/input_controls.dart';
part 'src/linear_progress.dart';
part 'src/ripple.dart';



