# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

BeSharp is a Flutter mobile application that presents users with daily math problems at random times with time limits. The app supports ranking systems and user interactions, with Firebase as the backend and AWS S3 for file storage.

## Development Commands

### Running the Application
```bash
# Development environment
flutter run --flavor dev -t lib/main_dev.dart

# Staging environment  
flutter run --flavor stg -t lib/main_stg.dart

# Production environment
flutter run --flavor prod -t lib/main_prod.dart
```

### Building for Release
```bash
# iOS builds
flutter build ios --flavor dev -t lib/main_dev.dart --release
flutter build ios --flavor stg -t lib/main_stg.dart --release
flutter build ios --flavor prod -t lib/main_prod.dart --release

# Android builds
flutter build appbundle --flavor dev -t lib/main_dev.dart
flutter build appbundle --flavor stg -t lib/main_stg.dart
flutter build appbundle --flavor prod -t lib/main_prod.dart
```

### Code Quality
```bash
# Format code
dart format --set-exit-if-changed .

# Analyze code
flutter analyze .

# Generate code (run after model changes)
flutter pub run build_runner build --delete-conflicting-outputs

# Watch for changes during development
flutter pub run build_runner watch --delete-conflicting-outputs
```

### Dependencies
```bash
# Update all dependencies
flutter pub upgrade --major-versions
```

## Architecture Overview

The application follows a clean architecture pattern with clear separation of concerns:

### Core Architecture Layers
- **View Layer**: UI components and pages (`lib/view/`)
- **Provider Layer**: State management using Riverpod (`lib/provider/`)
- **Repository Layer**: Data access and business logic (`lib/repository/`)
- **Use Case Layer**: Business logic coordination (`lib/use_case/`)
- **Model Layer**: Data models with Freezed (`lib/model/`)

### Key Architectural Patterns
- **Riverpod**: State management throughout the app with providers for different concerns
- **Freezed**: Immutable data classes for models and states
- **Result Pattern**: Custom Result<T> type for error handling with success/failure states
- **Multi-Flavor Setup**: Three environments (dev, stg, prod) with separate Firebase configurations

### Directory Structure
- `lib/core/`: Shared utility functions and core business logic
- `lib/constants/`: App constants including colors, limits, and enums
- `lib/provider/`: Riverpod providers organized by layer (view_model, repository, use_case)
- `lib/repository/`: Data access layer with Result pattern for error handling
- `lib/ui_core/`: Reusable UI components and styling utilities
- `lib/view/`: All UI screens and widgets
- `lib/model/firestore_model/`: Firestore document models
- `lib/model/rest_api/`: API request/response models
- `lib/typedefs/`: Type definitions and aliases

### State Management
- Uses Riverpod with code generation (`@riverpod` annotations)
- ViewModels manage screen state and business logic
- Repository providers handle data operations
- Stream providers for real-time data (auth, purchases)

### Firebase Integration
- Multiple Firebase projects for different environments
- Environment-specific configuration loaded from `.env` files
- Firestore for data persistence
- Cloud Functions for backend logic
- Firebase Auth for user management
- Firebase Messaging for push notifications

### Build System
- Flutter Flavorizr for multi-environment builds
- Separate Android application IDs and iOS bundle IDs per environment
- Environment-specific assets and configurations
- Code generation with build_runner for models and providers

## Important Notes

- All models use Freezed for immutability and JSON serialization
- Environment variables are loaded from `assets/env/` directory
- The app uses Get for routing and navigation
- Firebase configuration is dynamically loaded based on flavor
- Custom Result<T> pattern is used consistently for error handling
- UI components are built with reusability in mind using core utilities