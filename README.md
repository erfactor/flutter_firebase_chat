# Flutter + firebase chat
Chat app showcasing how easy it is to deploy a simple chat app with Flutter and Firebase. The codebase has proper architecture and various tests.

## Deploy
- Web - https://chat-6479b.web.app - deployed to Firebase Hosting
- Android - https://appdistribution.firebase.dev/i/17bb6079368f48d2 - deployed to Firebase App Distribution using Fastlane

## Notable libraries
- `riverpod` - State management & service locator
- `go_router` - Typed routing
- `flutter_hooks` - State hooks
- [strict_flutter_lints](https://github.com/erfactor/strict_flutter_lints) - Most of dart & `dart_code_metrics` lints
- `flex_color_scheme` - Custom color schemes for light/dark mode
- `logger`, `stack_trace` - Clean error logging

## Firebase products
- Authentication - Email+password & Google
- Analytics
- Crashlytics
- Firestore
- Hosting
- App Distribution

## Tests
 - Riverpod - Creating a room
 - Widget - Creating a room
 - Golden - Inbox page
 - Integration - Email + password auth flow
