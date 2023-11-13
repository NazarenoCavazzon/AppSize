part of appsize;

/// Provides `Context`, `Orientation`, and `DeviceType` parameters
/// to the builder function.
typedef ResponsiveBuild = Widget Function(
  BuildContext context,
  Orientation orientation,
  DeviceType deviceType,
);

/// {@template app_size}
/// The Widget that gets the device's details like orientation and constraints.
///
/// Usage: Wrap MaterialApp with this widget.
/// {@endtemplate}
class AppSize extends StatefulWidget {
  /// {@macro app_size}
  const AppSize({
    super.key,
    this.canvasWidth,
    required this.builder,
  });

  factory AppSize.child({
    Key? key,
    double? canvasWidth,
    required Widget child,
  }) =>
      AppSize(
        key: key,
        canvasWidth: canvasWidth,
        builder: (context, orientation, deviceType) => child,
      );

  /// Builds the widget whenever the orientation changes
  final ResponsiveBuild builder;

  /// The width of the figma canvas.
  final double? canvasWidth;

  @override
  State<AppSize> createState() => _AppSizeState();
}

class _AppSizeState extends State<AppSize> {
  Size? size;

  @override
  void initState() {
    super.initState();
    size = MediaQuery.maybeSizeOf(context);
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, contraints) {
        size ??= contraints.biggest;
        return OrientationBuilder(
          builder: (context, orientation) {
            AppSizeUtil.setScreenSize(size!, orientation, widget.canvasWidth);
            return widget.builder(context, orientation, AppSizeUtil.deviceType);
          },
        );
      },
    );
  }
}
