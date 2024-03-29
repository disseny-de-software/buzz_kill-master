/*
 * Copyright (c) 2020 Razeware LLC
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * Notwithstanding the foregoing, you may not use, copy, modify, merge, publish,
 * distribute, sublicense, create a derivative work, and/or sell copies of the
 * Software in any work that is designed, intended, or marketed for pedagogical or
 * instructional purposes related to programming, coding, application development,
 * or information technology.  Permission for such use, copying, modification,
 * merger, publication, distribution, sublicensing, creation of derivative works,
 * or sale is expressly withheld.
 *
 * This project and source code may use libraries or frameworks that are
 * released under various Open-Source licenses. Use of those libraries and
 * frameworks are governed by their own individual licenses.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

import 'package:buzzkill/generated/l10n.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

/// Represents a caffeinated drink and contains the logic for
/// calculating safe and lethal dosages.
class Drink {
  const Drink({
    @required this.caffeineAmount,
    @required this.servingSize,
    this.name,
  })  : assert(caffeineAmount != null),
        assert(servingSize != null);

  final String name;

  /// The caffeine amount (in milligrams) of this [Drink].
  final int caffeineAmount;

  /// The serving size (in fl. oz) of this [Drink].
  final double servingSize;

  /// Calculates the lethal dosage of this [Drink] for the specified body
  /// weight (in pounds).
  /// (Joan) Changed double to int and do ceil in order to check whether
  /// the message takes into account localization of plurals
  int lethalDosage(int bodyWeight) {
    final caffeineTolerance = bodyWeight * 68.22;
    return (caffeineTolerance / caffeineAmount).ceil();
  }

  /// Calculates the safe dosage of this [Drink] for the specified body weight
  /// (in pounds).
  /// (Joan) Changed double to int and do floor in order to check whether
  /// the message takes into account localization of plurals
  int safeDosage(int bodyWeight) {
    final caffeineTolerance = bodyWeight * 2.72155;
    return (caffeineTolerance / caffeineAmount).floor();
  }

  static List<Drink> suggestionListOf(BuildContext context) {
    final suggestionList = [
      Drink(
        name: S.of(context).firstSuggestedDrinkName,
        caffeineAmount: 145,
        servingSize: 8,
      ),
      Drink(
        name: S.of(context).secondSuggestedDrinkName,
        caffeineAmount: 77,
        servingSize: 1.5,
      ),
    ];
    final countryCode = Localizations.localeOf(context).countryCode;
    if (countryCode == 'BR' || countryCode == 'ES') {
      suggestionList.add(
        Drink(
          name: S.of(context).thirdSuggestedDrinkName,
          servingSize: 6.42,
          caffeineAmount: 23,
        ),
      );
    } else {
      suggestionList.add(
        Drink(
          name: S.of(context).thirdSuggestedDrinkName,
          caffeineAmount: 154,
          servingSize: 16,
        ),
      );
    }

    return suggestionList;
  }
}
