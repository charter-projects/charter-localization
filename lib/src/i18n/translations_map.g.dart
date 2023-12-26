part of 'translations.g.dart';

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on TranslationsEnGb {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'application.name': return TranslationOverrides.string(_root.$meta, 'application.name', {}) ?? 'Charter';
			case 'application.locale': return ({required AppLocale locale}) {
				final override = TranslationOverrides.context(_root.$meta, 'application.locale', {'locale': locale});
				if (override != null) {
					return override;
				}
				switch (locale) {
					case AppLocale.enGb:
						return 'English (United Kingdom)';
					case AppLocale.enUs:
						return 'English (United States)';
				}
			};
			default: return null;
		}
	}
}

extension on TranslationsEnUs {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			default: return null;
		}
	}
}
