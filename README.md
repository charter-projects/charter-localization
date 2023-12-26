# Charter Localizations

The charter apps localization files. These are separate to allow updating them localizations remotely, for grammar and spelling errors.

## Slang i18n formatting

The localization package being used is [slang](https://pub.dev/packages/slang#getting-started). it provides a lot of customization to the localizations and allows for overriding localizations while keeping type safety. Partial locale files are also supported by slang, so missing keys will use the default locale.

## Adding a locale

Use [en-GB](./lib/i18n/en-GB/application.i18n.json) as the base for a new locale, as it is the default locale.
