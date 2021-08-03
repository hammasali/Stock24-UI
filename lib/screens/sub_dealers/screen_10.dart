import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stock/core/app_info.dart';
import 'package:stock/core/language_literals.dart';
import 'package:stock/core/svgs.dart';
import 'package:stock/screens/sub_dealers/screen_11.dart';

class Screen10 extends StatefulWidget {
  static const String routeName = '/screen_10';

  const Screen10({Key? key}) : super(key: key);

  @override
  _Screen10State createState() => _Screen10State();
}

class _Screen10State extends State<Screen10> {
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
      En.en_Title8,
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

  get _nameField => Container(
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
      ),
    ),
  );

  get _contactPerson => Container(

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
            hintText: En.en_ContactPersonHint,
            hintStyle: GoogleFonts.roboto(
              textStyle: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 18,
              ),
            ),
          ),
    ),
  );

  get _mobileNum => Container(

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
      ),
    ),
  );

  get _whatsappNum => Container(

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
      ),
    ),
  );

  get _area => Container(
    decoration: BoxDecoration(
      border:
      Border.all(width: 1.0, color: AppInfo.TextClr),
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
            hintText: En.en_AreaHint,
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


  get _selectMarketingPersonal => Container(
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
        hintText: En.en_SelectDealerMulti,
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

  get _bottom => Container(

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
                text: ' *',
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

  get _nextBtn => InkWell(
    onTap: () => Navigator.of(context).pushNamed(Screen11.routeName),
    child: Container(
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
        En.en_SaveBtn,
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
            child: Container(
              margin:
              const EdgeInsets.symmetric(horizontal: AppInfo.kDefaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                  _area,
                  SizedBox(
                    height: AppInfo.getScreenHeight(context) * 0.028,
                  ),
                  _pinCode,
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
                  ),
                  SizedBox(
                    height: AppInfo.getScreenHeight(context) * 0.038,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
