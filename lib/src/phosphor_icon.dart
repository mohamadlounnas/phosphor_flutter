library;

import 'package:flutter/material.dart';
import 'package:phosphor_flutter/src/phosphor_duotone_secondaries.dart';

class PhosphorIcon extends Icon {
  const PhosphorIcon(
    IconData super.icon, {
    super.key,
    super.size,
    super.fill,
    super.weight,
    super.grade,
    super.opticalSize,
    super.color,
    super.shadows,
    super.semanticLabel,
    super.textDirection,
    this.duotoneSecondaryOpacity = 0.20,
    this.duotoneSecondaryColor,
  });

  final double duotoneSecondaryOpacity;
  final Color? duotoneSecondaryColor;

  @override
  Widget build(BuildContext context) {
    final ic = icon;
    if (ic == null) {
      return super.build(context);
    }
    // Extension types erase to [IconData]; resolve duotone via primary code point.
    if (ic.fontFamily == 'PhosphorDuotone' &&
        ic.fontPackage == 'phosphor_flutter') {
      final secondary = kPhosphorDuotoneSecondaries[ic.codePoint];
      if (secondary != null) {
        return Stack(
          alignment: Alignment.center,
          children: [
            Opacity(
              opacity: duotoneSecondaryOpacity,
              child: Icon(
                secondary,
                key: key,
                size: size,
                fill: fill,
                weight: weight,
                grade: grade,
                opticalSize: opticalSize,
                color: duotoneSecondaryColor ?? color,
                shadows: shadows,
                semanticLabel: semanticLabel,
                textDirection: textDirection,
              ),
            ),
            super.build(context),
          ],
        );
      }
    }
    return super.build(context);
  }
}
