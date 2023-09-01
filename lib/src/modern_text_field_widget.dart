import 'package:flutter/material.dart';

class ModernTextField extends StatefulWidget {
  final int? width;
  final int? borderRadius;
  final Color? backgroundColor;
  final Color? iconBackgroundColor;
  final Widget? customTextFieldIcon;
  final Color? leadingIconColor;
  final TextStyle? hintStyling;
  final int? leadingIconSize;
  final String? hintText;
  final TextEditingController? textEditingController;
  final TextStyle? textFieldTextStyle;
  final bool? isNumber;
  final bool? isPasswordField;
  final Widget? trailingWidget;
  final IconData? customLeadingIcon;

  const ModernTextField({
    super.key,
    this.width,
    this.backgroundColor,
    this.borderRadius,
    this.iconBackgroundColor,
    this.customTextFieldIcon,
    this.leadingIconColor,
    this.leadingIconSize,
    this.hintText,
    this.textEditingController,
    this.hintStyling,
    this.textFieldTextStyle,
    this.isNumber,
    this.isPasswordField,
    this.trailingWidget,
    this.customLeadingIcon,
  });

  @override
  State<ModernTextField> createState() => _ModernTextFieldState();
}

class _ModernTextFieldState extends State<ModernTextField> {
  bool showPassword = false;

  void showHidePassword() {
    if (showPassword == true) {
      setState(() {
        showPassword = false;
      });
    } else if (showPassword == false) {
      setState(() {
        showPassword = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Container(
        alignment: Alignment.center,
        width: widget.width != null
            ? double.parse(widget.width.toString())
            : MediaQuery.of(context).size.width / 1.1,
        height: 60,
        decoration: BoxDecoration(
          color: widget.backgroundColor ?? const Color(0xffE9E9E9),
          borderRadius: BorderRadius.all(
            Radius.circular(
              widget.borderRadius != null
                  ? double.parse(widget.borderRadius.toString())
                  : 10,
            ),
          ),
        ),
        child: ListTile(
          contentPadding: EdgeInsets.zero,
          minVerticalPadding: 0,
          leading: Container(
            margin: const EdgeInsets.only(
              left: 5,
              top: 2.5,
              bottom: 2.5,
            ),
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color:
                  widget.iconBackgroundColor ?? Theme.of(context).primaryColor,
              borderRadius: BorderRadius.all(
                Radius.circular(
                  widget.borderRadius != null
                      ? double.parse(widget.borderRadius.toString())
                      : 10,
                ),
              ),
            ),
            child: widget.customTextFieldIcon ??
                Icon(
                  widget.customLeadingIcon ?? Icons.add,
                  color: widget.leadingIconColor ?? Colors.white,
                  size: widget.leadingIconSize != null
                      ? double.parse(widget.leadingIconSize.toString())
                      : 25,
                ),
          ),

          //Text Field Code Starts Here
          title: Center(
            child: TextField(
              obscureText: showPassword,
              controller: widget.textEditingController,
              keyboardType: widget.isNumber == true
                  ? TextInputType.number
                  : TextInputType.text,
              style: widget.textFieldTextStyle ??
                  const TextStyle(
                    decoration: TextDecoration.none,
                  ),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: widget.hintText ?? "",
                hintStyle: widget.hintStyling ??
                    const TextStyle(
                      color: Color(0xffABABAB),
                      fontSize: 16,
                    ),
              ),
            ),
          ),
          trailing: widget.isPasswordField == true
              ? IconButton(
                  onPressed: showHidePassword,
                  icon: Icon(
                    showPassword == true
                        ? Icons.visibility_off
                        : Icons.visibility,
                    color: Colors.grey,
                  ),
                )
              : widget.trailingWidget ?? const SizedBox(),
        ),
      ),
    );
  }
}
