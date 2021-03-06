import 'package:flutter/material.dart';

class TextFileLogin extends StatelessWidget {
  final Stream textStream;
  final Function textChange;
  final String hintText;
  final TextInputType inputType;
  final String errorText;
  final Color cursorColor;
  final Color textStyleColor;
  final Color borderSideColor;
  final bool obscure;
  final String oldData;
  final TextStyle hintStyle;
  const TextFileLogin(
      {this.textStream,
      this.textChange,
      this.hintStyle,
      this.textStyleColor,
      this.hintText,
      this.borderSideColor,
      this.errorText,
      this.inputType,
      this.cursorColor,
      this.obscure = false,
      this.oldData});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: MediaQuery.of(context).size.width / 1.25,
      child: StreamBuilder(
          stream: textStream,
          builder: (context, snapshot) {
            return TextFormField(
                style: TextStyle(color: textStyleColor),
                cursorColor: cursorColor,
                autofocus: false,
                keyboardType: inputType,
                obscureText: obscure,
                onChanged: textChange,

                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    //borderRadius: BorderRadius.all(Radius.circular(40.0)),
                    borderSide: BorderSide(color: borderSideColor, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    // borderRadius: BorderRadius.all(Radius.circular(40.0)),
                    borderSide: BorderSide(color: borderSideColor, width: 2),
                  ),
                  errorBorder: OutlineInputBorder(
                    // borderRadius: BorderRadius.all(Radius.circular(40.0)),
                    borderSide: BorderSide(color: Colors.red, width: 2),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    // borderRadius: BorderRadius.all(Radius.circular(40.0)),
                    borderSide: BorderSide(color: Colors.red, width: 2),

                  ),
                  hintText: "$hintText",
                  helperStyle: TextStyle(
                    color: textStyleColor,
                    fontWeight: FontWeight.bold,
                  ),
                  hintStyle: hintStyle,
                  errorText: errorText,
                ),
                initialValue: oldData);
          }),
    );
  }
}
