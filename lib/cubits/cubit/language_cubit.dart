import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

class LanguageCubit extends Cubit<Locale?> {
  LanguageCubit()
      : super(Locale(
            Platform.localeName.split('_')[0]));

  // void getLang() {
  //   SharedPreferences prefs = locator.get<SharedPreferences>();
  //   String? langCode = prefs.getString('lang');
  //   if (langCode != null) {
  //     emit(Locale(langCode));
  //   } else {
  //     emit(Locale(Platform.localeName.split('_')[0]));
  //   }
  // }

  void changeLang(context, String lang) async {
    emit(Locale(lang));
  }

  @override
  void onChange(Change<Locale?> change) {
    print('Lang Cubit: $change');
    super.onChange(change);
  }
}
