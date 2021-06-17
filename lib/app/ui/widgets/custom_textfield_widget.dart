import 'package:flutter/material.dart';
import 'package:fryghthub/app/ui/theme/app_colors.dart';

class TextFieldWidget extends StatelessWidget {
  final Widget prefixIcon;
  final IconData icon;
  final String hint;
  final String errorText;
  final bool isObscure;
  final bool isIcon;
  final TextInputType inputType;
  final TextEditingController textController;
  final Color hintColor;
  final Color iconColor;
  final FocusNode focusNode;
  final ValueChanged onFieldSubmitted;
  final ValueChanged onChanged;
  final bool autoFocus;
  final TextInputAction inputAction;
  final Color borderSideColor;
  final Color filledColor;
  final bool filled;
  final double fontSize;
  final String labelText;
  final Widget suffixIcon;
  final TextStyle hintStyle;
  final bool enabled;

  const TextFieldWidget(
      {Key key,
      this.icon,
      this.prefixIcon,
      this.suffixIcon,
      this.fontSize,
      this.hint,
      this.labelText,
      this.errorText,
      this.isObscure = false,
      this.inputType,
      this.textController,
      this.isIcon = true,
      this.hintColor,
      this.iconColor,
      this.focusNode,
      this.onFieldSubmitted,
      this.onChanged,
      this.autoFocus = false,
      this.inputAction,
      this.borderSideColor,
      this.filledColor,
      this.hintStyle,
      this.filled,
      this.enabled})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textController,
      focusNode: focusNode,
      onFieldSubmitted: onFieldSubmitted,
      onChanged: onChanged,
      autofocus: autoFocus,
      textInputAction: inputAction,
      obscureText: this.isObscure,
//      maxLength: 25,
      keyboardType: this.inputType,
//      style: Theme.of(context).textTheme.body1,
      decoration: InputDecoration(
          // contentPadding: const EdgeInsets.fromLTRB(, , 0, 16),
          hintText: this.hint,
          labelText: labelText,
          hintStyle: hintStyle,
          errorText: errorText,
          // enabled: enabled,
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: borderSideColor),
              borderRadius: BorderRadius.circular(8)),
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(8)),
          filled: filled,
          fillColor: filledColor,
          border: InputBorder.none,
          disabledBorder: InputBorder.none,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
//          prefixIcon: IconButton(icon: null, onPressed: null),
          icon: this.isIcon ? Icon(this.icon, color: iconColor) : null),
    );
  }
}
