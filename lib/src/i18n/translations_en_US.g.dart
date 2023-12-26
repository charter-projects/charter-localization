part of 'translations.g.dart';

// Path: <root>
class TranslationsEnUs extends TranslationsEnGb {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	/// [AppLocaleUtils.buildWithOverrides] is recommended for overriding.
	TranslationsEnUs.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: $meta = TranslationMetadata(
		    locale: AppLocale.enUs,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super.build(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en-US>.
	@override final TranslationMetadata<AppLocale, TranslationsEnGb> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	@override late final TranslationsEnUs _root = this; // ignore: unused_field

	// Translations
	@override late final TranslationsApplicationEnUs application = TranslationsApplicationEnUs._(_root);
}

// Path: application
class TranslationsApplicationEnUs extends TranslationsApplicationEnGb {
	TranslationsApplicationEnUs._(TranslationsEnUs root) : this._root = root, super._(root);

	@override final TranslationsEnUs _root; // ignore: unused_field

	// Translations
}
