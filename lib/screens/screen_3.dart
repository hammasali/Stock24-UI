import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stock/core/app_info.dart';
import 'package:stock/core/language_literals.dart';
import 'package:stock/core/svgs.dart';
import 'package:stock/screens/screen_4.dart';

class Screen3 extends StatelessWidget {
  static const String routeName = '/screen3';

  const Screen3({Key? key}) : super(key: key);

  get _nameField => Container(
        margin: const EdgeInsets.all(AppInfo.kDefaultPadding),
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
          autofocus: false,
          decoration: InputDecoration(

            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            focusedErrorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            contentPadding: const EdgeInsets.all(AppInfo.kDefaultPadding),
            hintText: En.en_NameHint,
            hintStyle: GoogleFonts.roboto(
              textStyle: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 18,
              ),
            ),

            // prefixIcon: Text.rich(
            //   TextSpan(
            //     text: 'FIRST NAME',
            //     children: <InlineSpan>[
            //       TextSpan(
            //         text: '*',
            //         style: TextStyle(color: Colors.red),
            //       ),
            //     ],
            //     style: TextStyle(color: Colors.black54),
            //   ),
            // ),
            suffixIcon: Icon(
              FontAwesomeIcons.asterisk,
              color: AppInfo.AsteriskClr,
              size: 8,
            ),
          ),
        ),
      );

  get _designation => Container(
        margin: const EdgeInsets.all(AppInfo.kDefaultPadding),
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
          autofocus: false,
          decoration: InputDecoration(
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            focusedErrorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            contentPadding: const EdgeInsets.all(AppInfo.kDefaultPadding),
            hintText: En.en_DesignationHint,
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
        margin: const EdgeInsets.all(AppInfo.kDefaultPadding),
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
        margin: const EdgeInsets.all(AppInfo.kDefaultPadding),
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

  get _area => Container(
        margin: const EdgeInsets.all(AppInfo.kDefaultPadding),
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
            suffixIcon: Icon(
              Icons.arrow_drop_down_outlined,
              color: AppInfo.TextClr,
            ),
          ),
        ),
      );

  get _saveBtn => Container(
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
      );

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
        title: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            En.en_Tittle3,
            style: GoogleFonts.roboto(
              textStyle: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 18,
                color: AppInfo.TextClr,
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    _nameField,
                    _designation,
                    _mobileNum,
                    _whatsappNum,
                    _area,
                  ],
                ),
                GestureDetector(
                  onTap: () => Navigator.of(context).pushNamed(Screen4.routeName),
                  child: _saveBtn,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
