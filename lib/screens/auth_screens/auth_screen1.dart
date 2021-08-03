import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stock/core/app_info.dart';
import 'package:stock/core/language_literals.dart';
import 'package:stock/core/svgs.dart';
import 'package:stock/screens/home/screen_1.dart';

class AuthScreen1 extends StatefulWidget {
  static const String routeName = '/';

  const AuthScreen1({Key? key}) : super(key: key);

  @override
  _AuthScreen1State createState() => _AuthScreen1State();
}

class _AuthScreen1State extends State<AuthScreen1> {
  bool? isProceed = true;

  Widget _title(context) => Container(
        margin: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          children: [
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text.rich(
                TextSpan(
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 64,
                      color: AppInfo.SplashTxtClr,
                    ),
                  ),
                  children: [
                    TextSpan(
                      text: En.en_SplashTitle,
                    ),
                    TextSpan(
                      text: En.en_SplashTitle2,
                      style: TextStyle(
                        fontFamily: 'Roboto',
                      ),
                    ),
                  ],
                ),
                textHeightBehavior:
                    TextHeightBehavior(applyHeightToFirstAscent: false),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(
              height: AppInfo.getScreenWidth(context) / 60.0,
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                En.en_SplashSubTitle,
                style: TextStyle(
                  fontFamily: 'Skia',
                  fontSize: 18,
                  color: AppInfo.SplashTxtClr,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(
              height: AppInfo.getScreenWidth(context) / 6,
            ),
            SvgPicture.string(
              svg_97bvv0,
              fit: BoxFit.scaleDown,
              allowDrawingOutsideViewBox: true,
            ),
            SizedBox(
              height: AppInfo.getScreenWidth(context) / 8,
            ),
            !isProceed!
                ? Text.rich(
                    TextSpan(
                      style: TextStyle(
                        fontFamily: 'Skia',
                        fontSize: 25,
                        color: AppInfo.SplashBtnClr,
                      ),
                      children: [
                        TextSpan(
                          text: '${En.en_OTPMessage}\n',
                        ),
                        TextSpan(
                          text: ' \n${En.en_OTPNo}',
                          style: TextStyle(
                            fontSize: 21,
                          ),
                        ),
                      ],
                    ),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.center,
                  )
                : Text.rich(
                    TextSpan(
                      style: TextStyle(
                        fontFamily: 'Skia',
                        fontSize: 25,
                        color: AppInfo.SplashBtnClr,
                      ),
                      children: [
                        TextSpan(
                          text: '${En.en_welcome}\n',
                        ),
                        TextSpan(
                          text: ' \n${En.en_SignInToGetStarted}',
                          style: TextStyle(
                            fontSize: 21,
                          ),
                        ),
                      ],
                    ),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.center,
                  )
          ],
        ),
      );

  Widget get _getTextField => Container(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        margin: const EdgeInsets.symmetric(horizontal: 10),
        height: 50.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: AppInfo.SplashBtnClr,
          border: Border.all(width: 1.0),
        ),
        child: Row(
          children: [
            Text(
              '+91',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 16,
                color: const Color(0xde000000),
                letterSpacing: 0.496,
                fontWeight: FontWeight.w500,
                height: 1.5,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
            SizedBox(
              width: 10.0,
            ),
            Container(
              width: 1.0,
              height: 20.0,
              color: Color(0x2753646C),
            ),
            SizedBox(
              width: 10.0,
            ),
            Expanded(
              child: TextField(
                keyboardType: TextInputType.phone,
                textAlign: TextAlign.left,
                showCursor: false,
                autofocus: false,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  hintText: '10 Digit Number',
                  hintStyle: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    color: const Color(0xc4707070),
                    letterSpacing: 0.496,
                    fontWeight: FontWeight.w500,
                    height: 1.5,
                  ),
                ),
              ),
            )
          ],
        ),
      );

  Widget get _resendOTP => !isProceed!
      ? Container(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5.0),
          child: Text(
            En.en_OTP,
            style: TextStyle(
              fontFamily: 'Skia',
              fontSize: 16,
              color: AppInfo.SplashOTPBtnClr,
            ),
            textAlign: TextAlign.center,
          ),
        )
      : Container();

  Widget get _proceedButton => Column(
        children: [
          Visibility(
            visible: isProceed!,
            child: InkWell(
              onTap: () {
                setState(() {
                  isProceed = !isProceed!;
                });
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 15.0, vertical: 10.0),
                margin: const EdgeInsets.symmetric(horizontal: 50),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: AppInfo.SplashBtnClr,
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0x43ffffff),
                      offset: Offset(0, 3),
                      blurRadius: 6,
                    ),
                  ],
                ),
                child: Text(
                  En.en_ProceedBtn,
                  style: TextStyle(
                    fontFamily: 'Skia',
                    fontSize: 22,
                    color: AppInfo.SplashBgClr,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
          ),
          Visibility(
            visible: !isProceed!,
            child: InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(Screen1.routeName);
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 15.0, vertical: 10.0),
                margin: const EdgeInsets.symmetric(horizontal: 50),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: AppInfo.SplashBtnClr,
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0x43ffffff),
                      offset: Offset(0, 3),
                      blurRadius: 6,
                    ),
                  ],
                ),
                child: Text(
                  En.en_LoginBtn,
                  style: TextStyle(
                    fontFamily: 'Skia',
                    fontSize: 22,
                    color: AppInfo.SplashBgClr,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
          ),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppInfo.SplashBgClr,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Center(child: _title(context)),
              SizedBox(height: AppInfo.getScreenHeight(context) / 16.0),
              Center(child: _getTextField),
              _resendOTP,
              SizedBox(height: AppInfo.getScreenHeight(context) / 16.0),
              Center(child: _proceedButton),
            ],
          ),
        ),
      ),
    );
  }
}
