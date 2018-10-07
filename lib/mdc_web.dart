/// Dart wrapper for the `material-components-web` Javascript library.
///
/// Packages without javascript wrappers here are implemented in (s)css:
/// * Animation
/// * Buttons
/// * Cards
/// * Elevation
/// * Grid lists
/// * Image list
/// * Layout grid
/// * RTL
/// * Shape
/// * Theme
/// * Typography
@JS('mdc')
library mdc_web;

import 'dart:html';
import 'package:js/js.dart';

export 'package:mdc_web/src/util.dart';

part 'src/animation.dart';
part 'src/app_bars.dart';
part 'src/auto_init.dart';
part 'src/base.dart';
part 'src/buttons.dart';
part 'src/chips.dart';
part 'src/dialog.dart';
part 'src/dom.dart';
part 'src/drawer.dart';
part 'src/input_controls.dart';
part 'src/linear_progress.dart';
part 'src/lists.dart';
part 'src/menus.dart';
part 'src/ripple.dart';
part 'src/snackbar.dart';
part 'src/tabs.dart';
