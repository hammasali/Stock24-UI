import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stock/core/app_info.dart';
import 'package:stock/core/language_literals.dart';
import 'package:stock/core/svgs.dart';
import 'package:stock/screens/screen_8.dart';

class Screen7 extends StatefulWidget {
  const Screen7({Key? key}) : super(key: key);
  static const String routeName = '/screen_7';

  @override
  _Screen7State createState() => _Screen7State();
}

class _Screen7State extends State<Screen7> {
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
                      fontWeight: FontWeight.w500,
                    )),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: AppInfo.getScreenHeight(context) / 40,
            ),
            SvgPicture.string(
              dottedLine,
              fit: BoxFit.scaleDown,
              allowDrawingOutsideViewBox: true,
            ),
          ],
        ),
      );

  get _bankName => Container(
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
            hintText: En.en_BankNameHint,
            hintStyle: GoogleFonts.roboto(
              textStyle: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 18,
              ),
            ),

          ),
        ),
      );

  get _branchName => Container(
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
            hintText: En.en_BranchNameHint,
            hintStyle: GoogleFonts.roboto(
              textStyle: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 18,
              ),
            ),

          ),
        ),
      );

  get _accountType => Container(
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
            hintText: En.en_AccountTypeHint,
            hintStyle: GoogleFonts.roboto(
              textStyle: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 18,
              ),
            ),
            suffixIcon: SvgPicture.string(
              dropDownIcon,
              fit: BoxFit.scaleDown,
              allowDrawingOutsideViewBox: true,
            ),
          ),
        ),
      );

  get _accountNumber => Container(
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
            hintText: En.en_AccountNumHint,
            hintStyle: GoogleFonts.roboto(
              textStyle: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 18,
              ),
            ),

          ),
        ),
      );

  get _ifscCode => Container(
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
            hintText: En.en_IFCSCodeHint,
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
              onTap: () => Navigator.of(context).pushNamed(Screen8.routeName),
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
                children: [
                  _progress,
                  SizedBox(
                    height: AppInfo.getScreenHeight(context) * 0.02,
                  ),
                  _bankName,
                  SizedBox(
                    height: AppInfo.getScreenHeight(context) * 0.028,
                  ),
                  _branchName,
                  SizedBox(
                    height: AppInfo.getScreenHeight(context) * 0.028,
                  ),
                  _accountType,
                  SizedBox(
                    height: AppInfo.getScreenHeight(context) * 0.028,
                  ),
                  _accountNumber,
                  SizedBox(
                    height: AppInfo.getScreenHeight(context) * 0.028,
                  ),
                  _ifscCode,
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
