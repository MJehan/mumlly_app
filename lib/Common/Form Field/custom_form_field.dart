import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mumlly_app/Provider/theme_provider.dart';

class CustomFormField extends StatelessWidget {
  CustomFormField({super.key,
    required this.themeProvider,
    required this.controller,
    required this.hintText,
    this.suffixWidget,
    this.prefixIcon,
    this.keyboardType = TextInputType.text,
    this.obscureText=false,
    this.validator,
    this.onChanged,
    this.color = const Color(0xFFcccccc),
    this.hintFontSize = 15,
    //this.maxLines,
  });

  final ThemeProvider themeProvider;
  final TextEditingController controller;
  final String hintText;
  Widget? suffixWidget;
  Widget? prefixIcon;
  final TextInputType keyboardType;
  final bool obscureText;
  String? Function(String?) ? validator;
  Function(Object) ? onChanged;
  final Color color;
  double hintFontSize;
  //int ? maxLines = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        //Text(hintText,style: TextStyle(color: AppColor.black,fontSize: 12,fontWeight: FontWeight.w500),),
        SizedBox(height: 5,),
        Container(
          child: TextFormField(
            autofocus: false,
            // onTap: () {
            //   // Manually focus on the text field and show the keyboard
            //   FocusScope.of(context).requestFocus(FocusNode());
            // },
            //showCursor: false,
            cursorColor: themeProvider.themeColor().textColor,
            controller: controller,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            //maxLines: maxLines,
            validator: (value) {
              if (value!.isEmpty) {
                return "Field can't be empty";
              }
              return null;
            },
            textInputAction: TextInputAction.next,
            obscureText: obscureText,
            keyboardType: keyboardType,
            onChanged: onChanged,
            decoration: InputDecoration(
              isDense: true,
              filled: true,
              //fillColor: color,
              hintText: hintText,
              hintStyle: TextStyle(fontSize: 14, fontFamily: "Jost" ,color: themeProvider.themeColor().textColor.withOpacity(.3)),
              errorStyle: const TextStyle(fontSize: 10, fontFamily: "Jost"),
              border: OutlineInputBorder(borderSide: BorderSide.none,borderRadius: BorderRadius.circular(10)),
              contentPadding: const EdgeInsets.symmetric(vertical: 8,horizontal: 8),
              suffixIcon: suffixWidget,
              prefixIcon: prefixIcon,
            ),
          ),
        ),
      ],
    );
  }
}