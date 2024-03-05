import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:new_mumlly_app/Common/Buttons/default_gradient_button.dart';
import 'package:new_mumlly_app/Common/login_custom_input_field.dart';
import 'package:new_mumlly_app/Provider/theme_provider.dart';
import 'package:new_mumlly_app/Screens/Login%20Screens/login_screen.dart';
import 'package:new_mumlly_app/Utilities/colors.dart';
import 'package:new_mumlly_app/Utilities/images.dart';
import 'package:new_mumlly_app/Utilities/size_config.dart';
import 'package:provider/provider.dart';

class SubDomainScreen extends StatefulWidget {
  static const String routeName = "SubDomainScreen";
  const SubDomainScreen({super.key});

  @override
  State<SubDomainScreen> createState() => _SubDomainScreenState();
}

class _SubDomainScreenState extends State<SubDomainScreen> {

  late ThemeProvider themeProvider;
  final _subDomainTextController= TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool isCheckingSubDomain = false;

  @override
  Widget build(BuildContext context) {
    themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      body:SafeArea(
        top: false,
        child: Column(
          children: [
            const SizedBox(height: 60,),
            Expanded(
              child: FittedBox(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:35,vertical: 35),
                      child: Image.asset(AppImage.getPath("Applogo2"),fit: BoxFit.scaleDown,height: 350,),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
              width: SizeConfig.screenWidth,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                    decoration: BoxDecoration(
                      color: themeProvider.themeColor().cardColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Form(
                        key: _formKey,
                        child: LoginCustomInputField(
                          controller: _subDomainTextController,hintText: "School",
                          suffixWidget: Icon(CupertinoIcons.globe,size: 25,),)
                    ),
                  ),
                  const SizedBox(height: 20,),
                  isCheckingSubDomain?  Center(
                    child: SpinKitCircle(color: AppColor.defaultColor1),) : DefaultButtonWithGradient(
                    buttonText: "Next",
                    paddingTop: 10,
                    onTap: () {
                    Navigator.of(context).pushNamed(LoginScreen.routeName);},
                  ),
                  const SizedBox(height: 15,),
                ],
              ),
            ),
            const SizedBox(height: 90,),
          ],
        ),
      ),
    );
  }
}
