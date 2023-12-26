part of 'translations.g.dart';

// Path: <root>
class TranslationsEnGb implements BaseTranslations<AppLocale, TranslationsEnGb> {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	/// [AppLocaleUtils.buildWithOverrides] is recommended for overriding.
	TranslationsEnGb.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: $meta = TranslationMetadata(
		    locale: AppLocale.enGb,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en-GB>.
	@override final TranslationMetadata<AppLocale, TranslationsEnGb> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsEnGb _root = this; // ignore: unused_field

	// Translations
	late final TranslationsApplicationEnGb application = TranslationsApplicationEnGb._(_root);
}

// Path: application
class TranslationsApplicationEnGb {
	TranslationsApplicationEnGb._(this._root);

	final TranslationsEnGb _root; // ignore: unused_field

	// Translations
	String get name => TranslationOverrides.string(_root.$meta, 'application.name', {}) ?? 'Charter';
	String locale({required AppLocale locale}) {
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
	}
}
