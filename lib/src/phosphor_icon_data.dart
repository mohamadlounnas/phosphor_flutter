library;

import 'package:flutter/widgets.dart';

/// Flutter 3.44+ makes [IconData] `final`, so phosphor can no longer subclass it.
/// Icon glyphs are plain [IconData] literals in the generated `phosphor_icons_*.dart`
/// files. These typedefs preserve upstream type names for callers.
typedef PhosphorIconData = IconData;
typedef PhosphorFlatIconData = IconData;
typedef PhosphorDuotoneIconData = IconData;
