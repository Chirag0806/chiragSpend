A Flutter **Spend Tracker** app with a monthly spend summary screen. Data is provided by in-app mock models for now—no backend or persistence.

## Features

- **Monthly spend header** — gradient card with total spend, month label, and trend indicator
- **Categories** — horizontally scrollable category cards with amounts
- **Recent transactions** — scrollable list of mock transactions
- **Gradient FAB** — circular floating action button (purple gradient); tap shows a snackbar
- **App bar actions** — notification icon with snackbar feedback

## Project structure

```
lib/
├── main.dart                      # App entry, Material 3 theme
├── models/spend_models.dart       # Category, Transaction, MockDataProvider
├── screens/spend_summary_screen.dart
└── widgets/spend_widgets.dart     # Header, categories, transactions, FAB
```

## Requirements

- [Flutter SDK](https://docs.flutter.dev/get-started/install) (Dart SDK `^3.11.5` per `pubspec.yaml`)

## Getting started

```bash
flutter pub get
flutter run
```

Run on a specific device if needed:

```bash
flutter devices
flutter run -d <device_id>
```

## Tech stack

- Flutter with **Material 3**
- Theme seed color `#667EEA` (matches header and FAB gradient)
- `cupertino_icons` for icons
