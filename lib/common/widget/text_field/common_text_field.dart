import 'package:flutter/material.dart';

/// Một widget TextField dễ tái sử dụng cho nhiều dự án.
///
/// Dùng cho cả trường hợp thường và form field (kết hợp validator).
class CommonTextField extends StatelessWidget {
  /// [controller] để quản lý text
  final TextEditingController? controller;

  /// [initialValue] dùng khi không có controller
  final String? initialValue;

  /// Label hiển thị bên trên TextField (phần hướng dẫn)
  final String? labelText;

  /// Placeholder/hint
  final String? hintText;

  /// Icon hiển thị ở bên trái (prefix)
  final Widget? prefixIcon;

  /// Icon hiển thị ở bên phải (suffix)
  final Widget? suffixIcon;

  /// Bật/tắt chế độ ẩn text (như dùng cho password)
  final bool obscureText;

  /// Tuỳ chỉnh kiểu input (số, email, text,...)
  final TextInputType keyboardType;

  /// Tuỳ chỉnh action của bàn phím (done, next,...)
  final TextInputAction textInputAction;

  /// Bật/tắt chế độ chỉ đọc
  final bool readOnly;

  /// Hàm validator dành cho Form (nếu bạn dùng [TextFormField] thay vì [TextField])
  final String? Function(String?)? validator;

  /// Callback khi nội dung thay đổi
  final ValueChanged<String>? onChanged;

  /// Callback cho sự kiện khi nhấn "enter" trên bàn phím
  final VoidCallback? onEditingComplete;

  /// Callback cho sự kiện khi hoàn thành nhập liệu
  final ValueChanged<String>? onFieldSubmitted;

  /// Custom style cho text
  final TextStyle? style;

  /// Custom style cho label
  final TextStyle? labelStyle;

  /// Custom style cho hint
  final TextStyle? hintStyle;

  /// Decoration cho viền, màu, v.v.
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final InputBorder? errorBorder;
  final InputBorder? focusedErrorBorder;

  /// Cho phép hiển thị max line (vd: chat, note, multiline)
  final int maxLines;

  /// Giới hạn ký tự nếu cần
  final int? maxLength;

  /// Bật/tắt hiển thị đếm ký tự (nếu [maxLength] != null)
  final bool? showCounter;

  /// Padding, margin,... (nếu muốn gói thêm)
  final EdgeInsets? contentPadding;

  const CommonTextField({
    super.key,
    this.controller,
    this.initialValue,
    this.labelText,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.textInputAction = TextInputAction.done,
    this.readOnly = false,
    this.validator,
    this.onChanged,
    this.onEditingComplete,
    this.onFieldSubmitted,
    this.style,
    this.labelStyle,
    this.hintStyle,
    this.enabledBorder,
    this.focusedBorder,
    this.errorBorder,
    this.focusedErrorBorder,
    this.maxLines = 1,
    this.maxLength,
    this.showCounter,
    this.contentPadding,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // Nếu cần validator -> dùng TextFormField
      // Nếu chỉ cần TextField -> ta vẫn có thể dùng TextFormField (validator=null)
      controller: controller,
      initialValue: controller == null ? initialValue : null,
      obscureText: obscureText,
      readOnly: readOnly,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      validator: validator,
      onChanged: onChanged,
      onEditingComplete: onEditingComplete,
      onFieldSubmitted: onFieldSubmitted,
      style: style,
      maxLines: maxLines,
      maxLength: maxLength,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        labelStyle: labelStyle,
        hintStyle: hintStyle,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        // Hiển thị counter hay không
        counterText: (showCounter == false) ? '' : null,
        // Các loại border khác nhau (nếu cần tùy chỉnh)
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: const BorderSide(color: Colors.grey, width: 1),
            ),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(
                color: Theme.of(context).primaryColor,
                width: 1.5,
              ),
            ),
        errorBorder: errorBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: const BorderSide(color: Colors.red, width: 1),
            ),
        focusedErrorBorder: focusedErrorBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: const BorderSide(color: Colors.red, width: 1.5),
            ),
        contentPadding: contentPadding ?? const EdgeInsets.all(12.0),
      ),
    );
  }
}
