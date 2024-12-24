// import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class ButtonBase {
  /// Hàm gốc để tạo ElevatedButton với các thuộc tính mở rộng.
  /// Từ hàm này, chúng ta có thể tạo ra nhiều dạng button khác nhau (text, icon, outlined, v.v.)
  static Widget


  base({
    /// Bắt buộc: widget hiển thị bên trong button
    required Widget child,

    /// Hàm xử lý khi nhấn
    VoidCallback? onPressed,

    /// Bán kính bo góc
    double borderRadius = 7,

    /// Padding bên trong button
    EdgeInsetsGeometry padding = const EdgeInsets.symmetric(
      horizontal: 16,
      vertical: 12,
    ),

    /// Màu chữ/icon
    Color? foregroundColor,

    /// Độ nổi của button
    double? elevation,

    /// Hình dạng viền button (nếu muốn tuỳ biến so với borderRadius)
    OutlinedBorder? shape,

    /// Màu nền button
    Color? backgroundColor,

    /// Kích thước cố định (ngang, dọc)
    Size? fixedSize,

    /// Kiểm soát trạng thái loading
    bool isLoading = false,

    /// Custom widget hiển thị khi đang loading
    Widget? loadingWidget,

    /// Style text nếu cần override chung cho child = Text()
    TextStyle? textStyle,

    /// Màu button khi disabled
    Color? disabledBackgroundColor,

    /// Màu chữ/icon khi disabled
    Color? disabledForegroundColor,
  }) {
    return ElevatedButton(
      // Nếu isLoading = true, onPressed sẽ null => button ở trạng thái disabled
      onPressed: isLoading ? () {} : onPressed,

      style: ButtonStyle(
        // Đặt fixedSize
        fixedSize:
            fixedSize != null ? WidgetStateProperty.all(fixedSize) : null,

        // Đặt elevation
        elevation:
            elevation != null ? WidgetStateProperty.all(elevation) : null,

        // // Màu chữ/icon
        // foregroundColor: (foregroundColor != null)
        //     ? WidgetStateProperty.all(foregroundColor)
        //     : null,

        // Áp dụng textStyle nếu có
        textStyle:
            (textStyle != null) ? WidgetStateProperty.all(textStyle) : null,

        // Màu nền
        backgroundColor: WidgetStateProperty.resolveWith<Color?>((states) {
          if (states.contains(WidgetState.disabled)) {
            return disabledBackgroundColor ??
                backgroundColor?.withOpacity(0.5) ??
                Colors.grey;
          }
          return backgroundColor;
        }),

        // Màu chữ khi disabled
        // (foregroundColor khi disabled) - tuỳ chọn
        foregroundColor: WidgetStateProperty.resolveWith<Color?>((states) {
          if (states.contains(WidgetState.disabled)) {
            return disabledForegroundColor ??
                foregroundColor?.withOpacity(0.5) ??
                Colors.white70;
          }
          return foregroundColor ?? Colors.white;
        }),

        // Padding
        padding: WidgetStateProperty.all(padding),

        // Shape (bo góc hoặc custom)
        shape: WidgetStateProperty.all(
          shape ??
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius),
              ),
        ),

        // Tối ưu tap target (loại bỏ khoảng trống thừa)
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,

        // Giảm mật độ hiển thị (giúp button gọn hơn)
        visualDensity: VisualDensity.compact,
      ),

      // Nếu đang loading thì hiển thị loadingWidget (hoặc spinner mặc định),
      // ngược lại hiển thị child
      child: isLoading
          ? loadingWidget ??
              const SizedBox(
                height: 16,
                width: 16,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  color: Colors.white,
                ),
              )
          : child,
    );
  }

  /// Button text cơ bản
  static Widget text({
    required String text,
    VoidCallback? onPressed,
    double borderRadius = 7,
    EdgeInsetsGeometry padding = const EdgeInsets.symmetric(
      horizontal: 16,
      vertical: 12,
    ),
    Color? foregroundColor,
    double? elevation,
    OutlinedBorder? shape,
    Color? backgroundColor,
    Size? fixedSize,
    bool isLoading = false,
    Widget? loadingWidget,
    TextStyle? textStyle,

    /// Màu nền khi disabled
    Color? disabledBackgroundColor,

    /// Màu chữ khi disabled
    Color? disabledForegroundColor,
  }) {
    return base(
      child: Text(text, style: textStyle),
      onPressed: onPressed,
      borderRadius: borderRadius,
      padding: padding,
      foregroundColor: foregroundColor,
      elevation: elevation,
      shape: shape,
      backgroundColor: backgroundColor,
      fixedSize: fixedSize,
      isLoading: isLoading,
      loadingWidget: loadingWidget,
      textStyle: textStyle,
      disabledBackgroundColor: disabledBackgroundColor,
      disabledForegroundColor: disabledForegroundColor,
    );
  }

  /// Button text kèm icon (icon bên trái hoặc bên phải)
  static Widget icon({
    required String text,
    required IconData iconData,
    bool iconLeading = true,
    VoidCallback? onPressed,
    double borderRadius = 7,
    EdgeInsetsGeometry padding = const EdgeInsets.symmetric(
      horizontal: 16,
      vertical: 12,
    ),
    Color? foregroundColor,
    double? elevation,
    OutlinedBorder? shape,
    Color? backgroundColor,
    Size? fixedSize,
    bool isLoading = false,
    Widget? loadingWidget,
    TextStyle? textStyle,
    Color? disabledBackgroundColor,
    Color? disabledForegroundColor,
    double iconSpacing = 8,
  }) {
    // child gồm icon + text
    final rowChild = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (iconLeading) Icon(iconData),
        if (iconLeading) SizedBox(width: iconSpacing),
        Text(text, style: textStyle),
        if (!iconLeading) SizedBox(width: iconSpacing),
        if (!iconLeading) Icon(iconData),
      ],
    );

    return base(
      child: rowChild,
      onPressed: onPressed,
      borderRadius: borderRadius,
      padding: padding,
      foregroundColor: foregroundColor,
      elevation: elevation,
      shape: shape,
      backgroundColor: backgroundColor,
      fixedSize: fixedSize,
      isLoading: isLoading,
      loadingWidget: loadingWidget,
      textStyle: textStyle,
      disabledBackgroundColor: disabledBackgroundColor,
      disabledForegroundColor: disabledForegroundColor,
    );
  }
}

// class ButtonBase {
//   /// Base button
//   /// we can use this method to create any type of button
//   static Widget base({
//     required Widget widget,
//     Function()? onPressed,
//     double? borderRadius,
//     EdgeInsetsGeometry? padding,
//     Color? foreGroundColor,
//     double? elevation,
//     OutlinedBorder? shape,
//     Color? color,
//     Size? fixedSize,
//   }) {
//     return ElevatedButton(
//         style: ButtonStyle(
//             visualDensity: VisualDensity.compact,
//             tapTargetSize: MaterialTapTargetSize.shrinkWrap,
//             fixedSize:
//                 fixedSize != null ? WidgetStateProperty.all(fixedSize) : null,
//             elevation: WidgetStateProperty.all(elevation),
//             foregroundColor: WidgetStateProperty.all(foreGroundColor),
//             padding:
//                 (padding != null) ? WidgetStateProperty.all(padding) : null,
//             backgroundColor: WidgetStateProperty.all(color),
//             shape: WidgetStateProperty.all(shape ??
//                 RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(borderRadius ?? 7)))),
//         onPressed: onPressed,
//         child: widget);
//   }

//   /// text button
//   static Widget text({
//     required String text,
//     Function()? onPressed,
//     TextStyle? textStyle,
//     double? borderRadius,
//     EdgeInsetsGeometry? padding,
//     Color? foreGroundColor,
//     double? elevation,
//     OutlinedBorder? shape,
//     Color? color,
//     Size? fixedSize,
//   }) {
//     return base(
//         widget: Text(text, style: textStyle),
//         onPressed: onPressed,
//         borderRadius: borderRadius,
//         padding: padding,
//         foreGroundColor: foreGroundColor,
//         elevation: elevation,
//         shape: shape,
//         color: color,

//         fixedSize: fixedSize);
//   }
// }
