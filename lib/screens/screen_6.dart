import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stock/core/app_info.dart';
import 'package:stock/core/language_literals.dart';
import 'package:stock/core/svgs.dart';
import 'package:stock/screens/screen_7.dart';

class Screen6 extends StatefulWidget {
  const Screen6({Key? key}) : super(key: key);
  static const String routeName = '/screen_6';

  @override
  _Screen6State createState() => _Screen6State();
}

class _Screen6State extends State<Screen6> {
  _appBar(context) => AppBar(
        backgroundColor: AppInfo.BgClr,
        elevation: 0.0,
        brightness: Brightness.dark,
        backwardsCompatibility: false,
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: AppInfo.BgClr,
            statusBarBrightness: Brightness.dark,
            statusBarIconBrightness: Brightness.dark,
            systemNavigationBarIconBrightness: Brightness.dark),
        toolbarHeight: 70.0,
        centerTitle: true,
        leading: InkWell(
          onTap: () => Navigator.of(context).pop(),
          child: SvgPicture.string(
            back,
            fit: BoxFit.scaleDown,
            allowDrawingOutsideViewBox: true,
          ),
        ),
        title: Text(
          En.en_Tittle5,
          style: GoogleFonts.roboto(
            textStyle: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 24,
              color: AppInfo.TextClr,
            ),
          ),
          textAlign: TextAlign.left,
        ),
      );

  get _progress => Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: AppInfo.kDefaultPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      SvgPicture.string(
                        progress,
                        fit: BoxFit.scaleDown,
                        allowDrawingOutsideViewBox: true,
                      ),
                      SvgPicture.string(
                        progress2,
                        fit: BoxFit.scaleDown,
                        allowDrawingOutsideViewBox: true,
                      ),
                    ],
                  ),
                  Container(
                    height: 3.0,
                    width: 80.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: AppInfo.TextClr,
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x29000000),
                          offset: Offset(0, 3),
                          blurRadius: 6,
                        ),
                      ],
                    ),
                  ),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      SvgPicture.string(
                        progress,
                        fit: BoxFit.scaleDown,
                        allowDrawingOutsideViewBox: true,
                      ),
                      SvgPicture.string(
                        progress2,
                        fit: BoxFit.scaleDown,
                        allowDrawingOutsideViewBox: true,
                      ),
                    ],
                  ),
                  Container(
                    height: 3.0,
                    width: 80.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: AppInfo.TextClr,
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x29000000),
                          offset: Offset(0, 3),
                          blurRadius: 6,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 22,
                    width: 22,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                      color: AppInfo.BgClr,
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x29000000),
                          offset: Offset(0, 3),
                          blurRadius: 6,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: AppInfo.getScreenHeight(context) / 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    En.en_PersonalDetails,
                    style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 16,
                      color: AppInfo.TextClr,
                    )),
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    En.en_BillingDetails,
                    style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 16,
                      color: AppInfo.TextClr,
                      fontWeight: FontWeight.w500,
                    )),
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    En.en_BankDetails,
                    style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 16,
                      color: AppInfo.TextClr,
                    )),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: AppInfo.getScreenHeight(context) / 40,
            ),
          ],
        ),
      );

  get _gstNo => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          border: Border.all(width: 1.0, color: AppInfo.TextClr),
          color: AppInfo.BgClr,
          boxShadow: [
            BoxShadow(
              color: const Color(0x29000000),
              offset: Offset(0, 3),
              blurRadius: 6,
            ),
          ],
        ),
        child: TextField(
          cursorColor: AppInfo.TextClr,
          autofocus: false,
          decoration: InputDecoration(
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            focusedErrorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            contentPadding: const EdgeInsets.all(AppInfo.kDefaultPadding),
            hintText: En.en_GSTNumHint,
            hintStyle: GoogleFonts.roboto(
              textStyle: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 18,
              ),
            ),

          ),
        ),
      );

  get _panNo => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          border: Border.all(width: 1.0, color: AppInfo.TextClr),
          color: AppInfo.BgClr,
          boxShadow: [
            BoxShadow(
              color: const Color(0x29000000),
              offset: Offset(0, 3),
              blurRadius: 6,
            ),
          ],
        ),
        child: TextField(
          cursorColor: AppInfo.TextClr,
          autofocus: false,
          decoration: InputDecoration(
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            focusedErrorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            contentPadding: const EdgeInsets.all(AppInfo.kDefaultPadding),
            hintText: En.en_PANNumHint,
            hintStyle: GoogleFonts.roboto(
              textStyle: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 18,
              ),
            ),
          ),
        ),
      );

  get _billingAdd => Container(
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          border: Border.all(width: 1.0, color: AppInfo.TextClr),
          color: AppInfo.BgClr,
          boxShadow: [
            BoxShadow(
              color: const Color(0x29000000),
              offset: Offset(0, 3),
              blurRadius: 6,
            ),
          ],
        ),
        child: TextField(
          cursorColor: AppInfo.TextClr,
          autofocus: false,
          keyboardType: TextInputType.multiline,
          minLines: 1,
          //Normal textInputField will be displayed
          maxLines: 5,
          decoration: InputDecoration(
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            focusedErrorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            contentPadding: const EdgeInsets.all(AppInfo.kDefaultPadding),
            hintText: En.en_BillingAddressHint,
            hintStyle: GoogleFonts.roboto(
              textStyle: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 18,
              ),
            ),

          ),
        ),
      );

  get _pinCode => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          border: Border.all(width: 1.0, color: AppInfo.TextClr),
          color: AppInfo.BgClr,
          boxShadow: [
            BoxShadow(
              color: const Color(0x29000000),
              offset: Offset(0, 3),
              blurRadius: 6,
            ),
          ],
        ),
        child: TextField(
          cursorColor: AppInfo.TextClr,
          autofocus: false,
          decoration: InputDecoration(
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            focusedErrorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            contentPadding: const EdgeInsets.all(AppInfo.kDefaultPadding),
            hintText: En.en_PinCodeHint,
            hintStyle: GoogleFonts.roboto(
              textStyle: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 18,
              ),
            ),

          ),
        ),
      );

  get _cityAndState => Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: const Color(0x0f1b285c),
                border: Border.all(width: 1.0, color: const Color(0x0f1b285c)),
              ),
              child: TextField(
                cursorColor: AppInfo.TextClr,
                autofocus: false,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  focusedErrorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  contentPadding: const EdgeInsets.all(AppInfo.kDefaultPadding),
                  hintText: En.en_City,
                  hintStyle: GoogleFonts.roboto(
                    textStyle: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 18,
                    ),
                  ),

                ),
              ),
            ),
          ),
          SizedBox(
            width: AppInfo.getScreenWidth(context) * 0.028,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: const Color(0x0f1b285c),
                border: Border.all(width: 1.0, color: const Color(0x0f1b285c)),
              ),
              child: TextField(
                cursorColor: AppInfo.TextClr,
                autofocus: false,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  focusedErrorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  contentPadding: const EdgeInsets.all(AppInfo.kDefaultPadding),
                  hintText: En.en_State,
                  hintStyle: GoogleFonts.roboto(
                    textStyle: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 18,
                    ),
                  ),

                ),
              ),
            ),
          ),
        ],
      );

  get _country => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: const Color(0x0f1b285c),
          border: Border.all(width: 1.0, color: const Color(0x0f1b285c)),
        ),
        child: TextField(
          cursorColor: AppInfo.TextClr,
          autofocus: false,
          decoration: InputDecoration(
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            focusedErrorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            contentPadding: const EdgeInsets.all(AppInfo.kDefaultPadding),
            hintText: En.en_Country,
            hintStyle: GoogleFonts.roboto(
              textStyle: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 18,
              ),
            ),

          ),
        ),
      );

  get _buttons => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: InkWell(
              onTap: () => Navigator.of(context).pop(),
              child: Container(
                padding: const EdgeInsets.all(AppInfo.kDefaultPadding),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(width: 1.0, color: AppInfo.SplashBgClr),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0x43ffffff),
                      offset: Offset(0, 3),
                      blurRadius: 6,
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    En.en_Previous,
                    style: TextStyle(
                      fontFamily: 'Skia',
                      fontSize: 22,
                      color: AppInfo.TextClr,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: AppInfo.getScreenHeight(context) * 0.028,
          ),
          Expanded(
            child: InkWell(
              onTap: () => Navigator.of(context).pushNamed(Screen7.routeName),
              child: Container(
                padding: const EdgeInsets.all(AppInfo.kDefaultPadding),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: AppInfo.TextClr,
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0x43ffffff),
                      offset: Offset(0, 3),
                      blurRadius: 6,
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    En.en_NextBtn,
                    style: TextStyle(
                      fontFamily: 'Skia',
                      fontSize: 22,
                      color: AppInfo.SplashTxtClr,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
            ),
          ),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: _appBar(context),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.all(AppInfo.kDefaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _progress,
                  SizedBox(
                    height: AppInfo.getScreenHeight(context) * 0.02,
                  ),
                  _gstNo,
                  SizedBox(
                    height: AppInfo.getScreenHeight(context) * 0.028,
                  ),
                  _panNo,
                  SizedBox(
                    height: AppInfo.getScreenHeight(context) * 0.028,
                  ),
                  _billingAdd,
                  SizedBox(
                    height: AppInfo.getScreenHeight(context) * 0.028,
                  ),
                  _pinCode,
                  SizedBox(
                    height: AppInfo.getScreenHeight(context) * 0.028,
                  ),
                  _cityAndState,
                  SizedBox(
                    height: AppInfo.getScreenHeight(context) * 0.028,
                  ),
                  _country,
                  SizedBox(
                    height: AppInfo.getScreenHeight(context) * 0.028,
                  ),
                  _buttons,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
