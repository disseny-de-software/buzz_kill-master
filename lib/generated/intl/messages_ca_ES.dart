// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ca_ES locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'ca_ES';

  static m0(servingSize) => "*Basat en una unitat de ${servingSize} ml.";

  static m1(quantity, formattedNumber) => "${Intl.plural(quantity, one: 'Una unitat.', other: '${formattedNumber} unitats al vostre sistema de cop.')}";

  static m2(quantity, formattedNumber) => "${Intl.plural(quantity, one: 'Una unitat al dia.', other: '${formattedNumber} unitats al dia.')}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "firstSuggestedDrinkName" : MessageLookupByLibrary.simpleMessage("Cafè de màquina (tasseta)"),
    "formPageActionButtonTitle" : MessageLookupByLibrary.simpleMessage("CALCULA"),
    "formPageAppBarTitle" : MessageLookupByLibrary.simpleMessage("Calculadora de mort per Cafeïna"),
    "formPageCustomDrinkCaffeineAmountInputLabel" : MessageLookupByLibrary.simpleMessage("Cafeïna"),
    "formPageCustomDrinkCaffeineAmountInputSuffix" : MessageLookupByLibrary.simpleMessage("mg"),
    "formPageCustomDrinkRadioTitle" : MessageLookupByLibrary.simpleMessage("Una altra"),
    "formPageCustomDrinkServingSizeInputLabel" : MessageLookupByLibrary.simpleMessage("Mida"),
    "formPageCustomDrinkServingSizeInputSuffix" : MessageLookupByLibrary.simpleMessage("ml"),
    "formPageRadioListLabel" : MessageLookupByLibrary.simpleMessage("Esculliu una beguda"),
    "formPageWeightInputLabel" : MessageLookupByLibrary.simpleMessage("Pes"),
    "formPageWeightInputSuffix" : MessageLookupByLibrary.simpleMessage("kilos"),
    "resultsPageAppBarTitle" : MessageLookupByLibrary.simpleMessage("Dosis"),
    "resultsPageFirstDisclaimer" : m0,
    "resultsPageLethalDosageMessage" : m1,
    "resultsPageLethalDosageTitle" : MessageLookupByLibrary.simpleMessage("Dosi Letal"),
    "resultsPageSafeDosageMessage" : m2,
    "resultsPageSafeDosageTitle" : MessageLookupByLibrary.simpleMessage("Limite Segur Diari"),
    "resultsPageSecondDisclaimer" : MessageLookupByLibrary.simpleMessage("*Es refereix a persones de més de 18 anys. Aquesta calculadora no substitueix els consells dels professionals mèdics."),
    "secondSuggestedDrinkName" : MessageLookupByLibrary.simpleMessage("Expresso"),
    "thirdSuggestedDrinkName" : MessageLookupByLibrary.simpleMessage("Cafè amb llet (tassa)")
  };
}
