# flutter_shimmer

    A package provides an easy way to add shimmer effect in Flutter project.

## [Demo Video](https://youtu.be/fQNxLqgr8iQ)
[![Watch the video](https://img.youtube.com/vi/fQNxLqgr8iQ/maxresdefault.jpg)](https://youtu.be/fQNxLqgr8iQ)

## Installing
    dependencies:
        shimmer: ^1.0.1

## Import
    import 'package:shimmer/shimmer.dart';

## Usage
```dart
SizedBox(
  width: 200.0,
  height: 100.0,
  child: Shimmer.fromColors(
    baseColor: Colors.red,
    highlightColor: Colors.yellow,
    child: Text(
      'Shimmer',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 40.0,
        fontWeight:
        FontWeight.bold,
      ),
    ),
  ),
);
```
## Example
[example.dart](https://youtu.be/fQNxLqgr8iQ)

### See more
- [Homepage](https://kingpesdev.firebaseapp.com/)
- [Github](https://github.com/kingpes) 