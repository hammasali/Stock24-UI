import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stock/core/app_info.dart';
import 'package:stock/core/language_literals.dart';
import 'package:stock/core/svgs.dart';
import 'package:stock/screens/screen_10.dart';

class Screen9 extends StatelessWidget {
  static const String routeName = '/screen9';

  const Screen9({Key? key}) : super(key: key);

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
      En.en_Title7,
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

  get _search => Padding(
    padding: const EdgeInsets.all(AppInfo.kDefaultPadding),
    child: Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
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
                contentPadding:
                const EdgeInsets.all(AppInfo.kDefaultPadding),
                hintText: En.en_SearchHint,
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
          width: 10.0,
        ),
        Container(
          padding: const EdgeInsets.all(AppInfo.kDefaultPadding),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
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
            En.en_AddBtn,
            style: GoogleFonts.roboto(
              textStyle: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 20,
                color: AppInfo.SplashTxtClr,
              ),
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ],
    ),
  );

  get _filter => Padding(
    padding: const EdgeInsets.symmetric(
        horizontal: AppInfo.kDefaultPadding,
        vertical: AppInfo.kDefaultPadding / 2),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '${En.en_TotalSubDealers}  : 14',
          style: GoogleFonts.roboto(
            textStyle: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 18,
              color: AppInfo.TextClr,
            ),
          ),
          textAlign: TextAlign.left,
        ),
        Row(
          children: [
            Text(
              En.en_Filter,
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 18,
                  color: AppInfo.TextClr,
                ),
              ),
              textAlign: TextAlign.left,
            ),
            SizedBox(
              width: 10.0,
            ),
            SvgPicture.string(
              filter,
              fit: BoxFit.scaleDown,
              allowDrawingOutsideViewBox: true,
            ),
          ],
        ),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
          appBar: _appBar(context),
          body: SafeArea(
            child: Column(
              children: <Widget>[
                _search,
                _filter,
                Expanded(
                  child: ListView.separated(
                    itemCount: 5,
                    padding:
                    const EdgeInsets.only(top: AppInfo.kDefaultPadding),
                    physics: BouncingScrollPhysics(
                        parent: AlwaysScrollableScrollPhysics()),
                    shrinkWrap: false,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () =>
                            Navigator.of(context).pushNamed(Screen10.routeName),
                        child: Container(
                          padding:
                          const EdgeInsets.all(AppInfo.kDefaultPadding),
                          margin: const EdgeInsets.symmetric(
                              horizontal: AppInfo.kDefaultPadding),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: AppInfo.BgClr,
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0x6c6c62a3),
                                offset: Offset(0, 3),
                                blurRadius: 6,
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                En.en_RakeshCeramics,
                                style: GoogleFonts.roboto(
                                  textStyle: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 20,
                                    color: AppInfo.TextClr,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                textAlign: TextAlign.left,
                              ),
                              SizedBox(
                                height: AppInfo.getScreenHeight(context) / 80,
                              ),
                              containerRow(En.en_ContactPerson, false),
                              SizedBox(
                                height: AppInfo.getScreenHeight(context) / 120,
                              ),
                              containerRow(En.en_MobileNumber, true),
                              SizedBox(
                                height: AppInfo.getScreenHeight(context) / 160,
                              ),
                              Divider(),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    En.en_Edit,
                                    style: GoogleFonts.roboto(
                                      textStyle: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 16,
                                        color: AppInfo.BtnClr2,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                  SvgPicture.string(
                                    verticalDivider,
                                    fit: BoxFit.scaleDown,
                                    allowDrawingOutsideViewBox: true,
                                  ),
                                  Text(
                                    En.en_Delete,
                                    style: GoogleFonts.roboto(
                                      textStyle: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 16,
                                        color: AppInfo.BtnClr2,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) => const SizedBox(
                      height: 10.0,
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }

  Widget containerRow(String _title, bool isPhone) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          _title,
          style: GoogleFonts.roboto(
            textStyle: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 16,
              color: AppInfo.TextClr,
            ),
          ),
          textAlign: TextAlign.left,
        ),
        Text(
          ':',
          style: GoogleFonts.roboto(
            textStyle: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 16,
              color: AppInfo.TextClr,
            ),
          ),
          textAlign: TextAlign.left,
        ),
        Text(
          'Data',
          style: GoogleFonts.roboto(
            textStyle: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 16,
              color: AppInfo.TextClr,
            ),
          ),
          textAlign: TextAlign.left,
        ),
        Visibility(
          visible: isPhone,
          maintainAnimation: true,
          maintainSize: true,
          maintainState: true,
          child: SvgPicture.string(
            phone,
            fit: BoxFit.scaleDown,
            height: 20,
            allowDrawingOutsideViewBox: true,
          ),
        )
      ],
    );
  }
}
