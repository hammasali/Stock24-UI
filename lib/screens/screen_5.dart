import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stock/core/app_info.dart';
import 'package:stock/core/language_literals.dart';
import 'package:stock/core/svgs.dart';

class Screen5 extends StatefulWidget {
  static const String routeName = '/screen_5';

  const Screen5({Key? key}) : super(key: key);

  @override
  _Screen5State createState() => _Screen5State();
}

class _Screen5State extends State<Screen5> {
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
        margin: const EdgeInsets.all(AppInfo.kDefaultPadding),
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
                      fontWeight: FontWeight.w500,
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

  get _nameField => Container(
        margin: const EdgeInsets.symmetric(horizontal: AppInfo.kDefaultPadding),
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
            hintText: En.en_EnterFirmName,
            hintStyle: GoogleFonts.roboto(
              textStyle: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 18,
              ),
            ),
            suffixIcon: Icon(
              FontAwesomeIcons.asterisk,
              color: AppInfo.AsteriskClr,
              size: 8,
            ),
          ),
        ),
      );

  get _contactPerson => Container(
    margin: const EdgeInsets.symmetric(horizontal: AppInfo.kDefaultPadding),

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
            hintText: En.en_ContactPerson,
            hintStyle: GoogleFonts.roboto(
              textStyle: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 18,
              ),
            ),
            suffixIcon: Icon(
              FontAwesomeIcons.asterisk,
              color: AppInfo.AsteriskClr,
              size: 8,
            ),
          ),
        ),
      );

  get _mobileNum => Container(
    margin: const EdgeInsets.symmetric(horizontal: AppInfo.kDefaultPadding),

    decoration: BoxDecoration(
          border: Border.all(width: 1.0, color: AppInfo.TextClr),
          borderRadius: BorderRadius.circular(5.0),
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
            hintText: En.en_MobileNumberHint,
            hintStyle: GoogleFonts.roboto(
              textStyle: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 18,
              ),
            ),
            suffixIcon: Icon(
              FontAwesomeIcons.asterisk,
              color: AppInfo.AsteriskClr,
              size: 8,
            ),
          ),
        ),
      );

  get _whatsappNum => Container(
    margin: const EdgeInsets.symmetric(horizontal: AppInfo.kDefaultPadding),

    decoration: BoxDecoration(
          border: Border.all(width: 1.0, color: AppInfo.TextClr),
          borderRadius: BorderRadius.circular(5.0),
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
            hintText: En.en_WhatsappHint,
            hintStyle: GoogleFonts.roboto(
              textStyle: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 18,
              ),
            ),
            suffixIcon: Icon(
              FontAwesomeIcons.asterisk,
              color: AppInfo.AsteriskClr,
              size: 8,
            ),
          ),
        ),
      );

  get _emailId => Container(
    margin: const EdgeInsets.symmetric(horizontal: AppInfo.kDefaultPadding),

    decoration: BoxDecoration(
          border: Border.all(width: 1.0, color: AppInfo.TextClr),
          borderRadius: BorderRadius.circular(5.0),
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
            hintText: En.en_EmailId,
            hintStyle: GoogleFonts.roboto(
              textStyle: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 18,
              ),
            ),
            suffixIcon: Icon(
              FontAwesomeIcons.asterisk,
              color: AppInfo.AsteriskClr,
              size: 8,
            ),
          ),
        ),
      );

  get _selectMarketingPersonal => Container(
    margin: const EdgeInsets.symmetric(horizontal: AppInfo.kDefaultPadding),

    decoration: BoxDecoration(
          border: Border.all(width: 1.0, color: AppInfo.TextClr),
          borderRadius: BorderRadius.circular(5.0),
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
          readOnly: true,
          autofocus: false,
          decoration: InputDecoration(
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            focusedErrorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            contentPadding: const EdgeInsets.all(AppInfo.kDefaultPadding),
            hintText: En.en_SelectMarketingPersonal,
            hintStyle: GoogleFonts.roboto(
              textStyle: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 18,
              ),
            ),
            suffixIcon: Icon(
              Icons.arrow_drop_down_outlined,
              color: AppInfo.TextClr,
            ),
          ),
        ),
      );

  get _bottom => Container(
    margin: const EdgeInsets.symmetric(horizontal: AppInfo.kDefaultPadding),

    child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text.rich(
              TextSpan(
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 18,
                  color: AppInfo.TextClr,
                ),
                children: [
                  TextSpan(
                    text: En.en_VSCard,
                  ),
                  TextSpan(
                    text: '*',
                    style: TextStyle(
                      color: AppInfo.AsteriskClr,
                    ),
                  ),
                ],
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
            SizedBox(
              height: AppInfo.getScreenHeight(context) * 0.028,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: const Color(0xb2ffffff),
                      border: Border.all(width: 1.0, color: AppInfo.TextClr),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SvgPicture.string(
                          frontCard,
                          fit: BoxFit.scaleDown,
                          allowDrawingOutsideViewBox: true,
                        ),
                        Text(
                          En.en_FrontSide,
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 18,
                            color: const Color(0xff49506e),
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: AppInfo.getScreenHeight(context) * 0.018,
                ),
                Expanded(
                  child: Container(
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: const Color(0xb2ffffff),
                      border: Border.all(width: 1.0, color: AppInfo.TextClr),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SvgPicture.string(
                          BackCard,
                          fit: BoxFit.scaleDown,
                          allowDrawingOutsideViewBox: true,
                        ),
                        Text(
                          En.en_BackSide,
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 18,
                            color: const Color(0xff49506e),
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
  );

  get _nextBtn => Container(
        padding: const EdgeInsets.symmetric(
            horizontal: AppInfo.kDefaultPadding * 3,
            vertical: AppInfo.kDefaultPadding),
        margin: const EdgeInsets.symmetric(vertical: AppInfo.kDefaultPadding),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: AppInfo.SplashBgClr,
          boxShadow: [
            BoxShadow(
              color: const Color(0x43ffffff),
              offset: Offset(0, 3),
              blurRadius: 6,
            ),
          ],
        ),
        child: Text(
          En.en_NextBtn,
          style: GoogleFonts.roboto(
            textStyle: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 22,
              color: AppInfo.SplashTxtClr,
              fontWeight: FontWeight.w400,
            ),
          ),
          textAlign: TextAlign.left,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: _appBar(context),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _progress,
                SizedBox(
                  height: AppInfo.getScreenHeight(context) * 0.02,
                ),
                _nameField,
                SizedBox(
                  height: AppInfo.getScreenHeight(context) * 0.028,
                ),
                _contactPerson,
                SizedBox(
                  height: AppInfo.getScreenHeight(context) * 0.028,
                ),
                _mobileNum,
                SizedBox(
                  height: AppInfo.getScreenHeight(context) * 0.028,
                ),
                _whatsappNum,
                SizedBox(
                  height: AppInfo.getScreenHeight(context) * 0.028,
                ),
                _emailId,
                SizedBox(
                  height: AppInfo.getScreenHeight(context) * 0.028,
                ),
                _selectMarketingPersonal,
                SizedBox(
                  height: AppInfo.getScreenHeight(context) * 0.028,
                ),
                _bottom,
                SizedBox(
                  height: AppInfo.getScreenHeight(context) * 0.008,
                ),
                Center(
                  child: _nextBtn,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
