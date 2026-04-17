# Migrant Office

A cross-platform Flutter application (Web & macOS) serving as a digital office portal for migrants — providing a unified interface for managing documents, applications, and government services.

---

## Tech Stack

| Layer | Technology |
|---|---|
| Framework | Flutter `^3.11.1` |
| Language | Dart |
| Navigation | `go_router 17.1.0` |
| Architecture | Modular Clean Architecture |
| Platforms | Web, macOS |

---

## Project Structure

The project uses a **modular monorepo** structure with Flutter workspaces. Each module is an independent Dart package under `modules/`.
```
migrant-office/
├── lib/                    # App entry point
├── web/                    # Flutter Web platform files
├── macos/                  # macOS platform files
├── config/                 # App configuration
├── modules/
│   ├── core/               # Shared utilities, base classes, constants
│   ├── design_system/      # UI components, themes, typography
│   ├── network/            # HTTP client, interceptors, API layer
│   ├── auth/               # Authentication & session management
│   └── applications/       # Business feature modules
├── pubspec.yaml
└── analysis_options.yaml
```

---

## Getting Started

### Prerequisites

- Flutter SDK `>=3.11.1` — [Install Flutter](https://docs.flutter.dev/get-started/install)
- Dart SDK (bundled with Flutter)

Verify your setup:

```bash
flutter doctor
```

### Installation

```bash
git clone https://github.com/aitinsan/migrant-office.git
cd migrant-office
flutter pub get
```

### Running the App

**Web:**
```bash
flutter run -d chrome
```

**macOS:**
```bash
flutter run -d macos
```

### Building for Production

**Web:**
```bash
flutter build web --release
```

**macOS:**
```bash
flutter build macos --release
```

---

## Modules

**`core`** — Foundation layer with shared utilities, base classes, and error handling used across all modules.

**`design_system`** — Centralized UI library with reusable widgets, color tokens, and theming for visual consistency.

**`network`** — Networking layer handling HTTP communication, interceptors, error mapping, and API client setup.

**`auth`** — Authentication module managing login, logout, token storage, and session lifecycle.

**`applications`** — Main business feature module with application screens, domain logic, and migrant office use cases.

---

## Development

Run the linter:
```bash
flutter analyze
```

Run all tests:
```bash
flutter test
```

Run tests for a specific module:
```bash
cd modules/auth
flutter test
```

---

## Contributing

1. Fork the repository
2. Create a branch: `git checkout -b feature/your-feature`
3. Commit: `git commit -m 'feat: your feature'`
4. Push: `git push origin feature/your-feature`
5. Open a Pull Request

---

## License

This project is proprietary. All rights reserved.
