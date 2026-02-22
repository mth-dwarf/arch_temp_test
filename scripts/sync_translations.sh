# This scripts arranges all translations in the same order as intl_en.arb and
# generates csv file that can be shared with copy team
dart scripts/dart/sync_translations.dart
fvm flutter gen-l10n