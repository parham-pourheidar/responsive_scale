import 'package:flutter/material.dart';
import 'dart:math';

/// An extension on [BuildContext] to easily scale width, height, and font size
/// based on the current screen size.
///
/// This is useful for creating responsive layouts where UI elements scale
/// proportionally on different screen sizes.
extension ResponsiveScale on BuildContext {
  /// Scales the given [width] based on the current screen width.
  ///
  /// The screen width is divided by 1000 and then multiplied by the provided [width].
  /// For example, if the screen width is 1200 and [width] is 100, the result is: (1200 / 1000) * 100 = 120.
  double w(num width) => (MediaQuery.of(this).size.width / 1000) * width;

  /// Scales the given [height] based on the current screen height.
  ///
  /// The screen height is divided by 1000 and then multiplied by the provided [height].
  /// For example, if the screen height is 800 and [height] is 100, the result is: (800 / 1000) * 100 = 80.
  double h(num height) => (MediaQuery.of(this).size.height / 1000) * height;

  /// Scales the given [size] (commonly used for font size or icons)
  /// based on the average of screen width and height.
  ///
  /// The formula is: sqrt(width * height) / 1000 * size.
  /// This provides a balanced scaling relative to the screen size.
  double s(num size) =>
      sqrt(MediaQuery.of(this).size.width * MediaQuery.of(this).size.height) /
      1000 *
      size;

  /// Returns symmetric padding with optional horizontal and vertical scaling
  /// based on the current screen size.
  ///
  /// Both [horizontal] and [vertical] are scaled according to the screen dimensions:
  /// - [horizontal] is scaled based on screen width.
  /// - [vertical] is scaled based on screen height.
  ///
  /// If not provided, the default value is 0 for both directions.
  ///
  /// Example usage:
  /// ```dart
  /// // Only horizontal padding (vertical will be 0)
  /// Padding(
  ///   padding: context.symmetric(horizontal: 16),
  ///   child: Text('Hello'),
  /// )
  ///
  /// // Only vertical padding (horizontal will be 0)
  /// Padding(
  ///   padding: context.symmetric(vertical: 8),
  ///   child: Text('Hello'),
  /// )
  ///
  /// // Both horizontal and vertical padding
  /// Padding(
  ///   padding: context.symmetric(horizontal: 16, vertical: 8),
  ///   child: Text('Hello'),
  /// )
  /// ```
  EdgeInsets symmetric({num horizontal = 0, num vertical = 0}) =>
      EdgeInsets.symmetric(horizontal: w(horizontal), vertical: h(vertical));
}
