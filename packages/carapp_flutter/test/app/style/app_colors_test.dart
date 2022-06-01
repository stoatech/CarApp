// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:carapp_flutter/app/style/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AppColors', () {
    test('test material accent color', () {
      final colorAccent = AppColors.accent;

      expect(
        colorAccent,
        const Color.fromARGB(255, 170, 1, 40).toMaterialAccentColor(),
      );
    });

    test('test material white color', () {
      final colorWhite = AppColors.white;

      expect(
        colorWhite,
        Colors.white.toMaterialColor(),
      );
    });

    test('test material mediumGrey color', () {
      final colorMediumGrey = AppColors.mediumGrey;

      expect(
        colorMediumGrey,
        const Color.fromARGB(255, 178, 178, 178).toMaterialColor(),
      );
    });

    test('test material darkGrey color', () {
      final colorDarkGrey = AppColors.darkGrey;

      expect(
        colorDarkGrey,
        const Color.fromARGB(255, 93, 93, 93).toMaterialColor(),
      );
    });

    test('test material black color', () {
      final colorBlack = AppColors.black;

      expect(
        colorBlack,
        Colors.black.toMaterialColor(),
      );
    });
  });
}
