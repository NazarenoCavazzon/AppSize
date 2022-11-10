part of appsize;

/// {@template app_size_extension}
/// The extension we use over the [num] class to make it
/// easier to use the tool.
///
/// {@endtemplate}
extension AppSizeExt on num {
  /// Calculates the height depending on the app height.
  ///
  /// Eg: 20.h -> will take 20% of the app height.
  double get h => this * AppSizeUtil.height / 100;

  /// Calculates the width depending on the app width
  ///
  /// Eg: 20.w -> will take 20% of the app width.
  double get w => this * AppSizeUtil.width / 100;

  /// Calculates the height depending on the device's screen size.
  ///
  /// Eg: 20.h -> will take 20% of the screen's height.
  double get dh => this * AppSizeUtil.deviceHeight / 100;

  /// Calculates the width depending on the device's screen size.
  ///
  /// Eg: 20.w -> will take 20% of the screen's width.
  double get dw => this * AppSizeUtil.deviceWidth / 100;

  /// Calculates the sp (Scalable Pixel) depending on the device's screen size.
  double get sp =>
      this * AppSizeUtil.deviceWidth * (AppSizeUtil.pixelRatio ?? 0.0026666666);

  ///This calculates the height percentage and returns a sized box with a proportional height
  ///Instead of SizedBox(height: 20); you can use 24.height,
  SizedBox get height => SizedBox(
        height: (this) * (AppSizeUtil.height / 1000),
      );

  ///This calculates the width percentage and returns a sized box with a proportional height
  ///Instead of SizedBox(width: 20); you can use 24.width,
  SizedBox get width => SizedBox(
        height: (this) * (AppSizeUtil.height / 1000),
      );
}
