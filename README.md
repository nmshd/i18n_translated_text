# i18n translated text

A utility package extending text to auto translate `i18n://` prefixed strings using `flutter_i18n`.

## Usage

Register your i18n translations as described [in the `flutter_i18n` package](https://pub.dev/packages/flutter_i18n).

Texts prefixed with `i18n://` will be translated automatically by the widget.

```dart
TranslatedText('i18n://hello_world');
```

You can use all other properties of the `Text` widget as well.

```dart
TranslatedText(
  'i18n://hello_world',
  style: TextStyle(fontSize: 24),
);
```

## License

[MIT](LICENSE)
