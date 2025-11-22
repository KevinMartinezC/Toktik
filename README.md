# TokTik

A Flutter application that mimics TikTok's vertical video scrolling experience, built with clean architecture principles.


https://github.com/user-attachments/assets/7c1a4f1a-b22b-495e-a5f9-8b08030a252c



## Features

- 📹 Vertical video scrolling (TikTok-style)
- 🎨 Clean Architecture implementation
- 📱 Smooth video playback
- 💖 Like and view count display
- 🔄 Infinite scroll pagination

## Prerequisites

Before you begin, ensure you have the following installed:

- [Flutter SDK](https://docs.flutter.dev/get-started/install) (3.10.0 or higher)
- [Dart SDK](https://dart.dev/get-dart)
- Android Studio / VS Code with Flutter extensions
- An Android emulator or iOS simulator (or a physical device)

## Setup Instructions

### 1. Clone the Repository

```bash
git clone https://github.com/KevinMartinezC/Toktik.git
cd toktik
```

### 2. Install Dependencies

```bash
flutter pub get
```

### 3. Add Video Assets

**Important:** This project requires video files to function properly. You need to add your own video files to the `assets/videos/` directory.

#### Steps to add videos:

1. Create or navigate to the `assets/videos/` folder in the project root:
   ```bash
   mkdir -p assets/videos
   ```

2. Add your video files (`.mp4` format) to the `assets/videos/` folder:
   - Name them as `1.mp4`, `2.mp4`, `3.mp4`, etc.
   - Or update the video file names in `lib/shared/data/local_video_posts.dart` to match your file names

3. **Recommended:** Keep video file sizes under 50MB for better performance
   - GitHub has a 100MB file size limit
   - Large files are already ignored in `.gitignore`

#### Example:
```
assets/
└── videos/
    ├── 1.mp4
    ├── 2.mp4
    ├── 3.mp4
    ├── 4.mp4
    └── ... (add as many as you want)
```

### 4. Verify Assets Configuration

The `pubspec.yaml` file should already have the assets configured:

```yaml
flutter:
  assets:
    - assets/videos/
```

If you made changes, run:
```bash
flutter pub get
```

### 5. Run the Application

#### For Android:
```bash
flutter run
```

#### For iOS:
```bash
flutter run
```

#### For a specific device:
```bash
flutter devices  # List available devices
flutter run -d <device-id>
```

## Project Structure

This project follows Clean Architecture principles:

```
lib/
├── domain/                    # Business Logic Layer
│   ├── datasources/          # Datasource interfaces (contracts)
│   ├── models/               # Domain entities
│   └── repositories/       # Repository interfaces
│
├── data/                     # Data Layer
│   ├── datasources/         # Datasource implementations
│   ├── models/              # Data Transfer Objects (DTOs)
│   └── repositories/        # Repository implementations
│
└── presentation/            # Presentation Layer
    ├── screens/            # UI Screens
    └── widgets/            # Reusable widgets
```

## Dependencies

- `video_player: ^2.10.1` - Video playback
- `provider: ^6.1.5+1` - State management
- `animate_do: ^4.2.0` - Animations
- `intl: ^0.20.2` - Internationalization

## Troubleshooting

### Videos not loading?

1. **Check file paths:** Ensure video files are in `assets/videos/` directory
2. **Verify pubspec.yaml:** Make sure assets are properly declared
3. **Rebuild the app:** Stop the app completely and run `flutter run` again (hot restart doesn't reload assets)
4. **Check file format:** Videos should be in `.mp4` format

### Build errors?

```bash
flutter clean
flutter pub get
flutter run
```

## Notes

- Video files are excluded from git (see `.gitignore`) due to size limitations
- The app uses local video files for demonstration purposes
- In a production app, you would typically fetch videos from a remote API

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## License

This project is open source and available under the MIT License.
