import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../localization.dart';

export 'i18n/translations.g.dart';

class CharterLocaleCubit extends Cubit<AppLocale> {
  CharterLocaleCubit() : super(AppLocale.enGb) {
    _sub = LocaleSettings.getLocaleStream().listen(emit);
  }

  late final StreamSubscription<AppLocale> _sub;

  @override
  Future<void> close() async {
    await _sub.cancel();
    return super.close();
  }
}

extension LocaleBuildContext on BuildContext {
  CharterLocaleCubit get localeCubit => read<CharterLocaleCubit>();
  CharterLocaleCubit get watchLocaleCubit => watch<CharterLocaleCubit>();

  AppLocale get locale => read<CharterLocaleCubit>().state;
  AppLocale get watchLocale => watch<CharterLocaleCubit>().state;
}
