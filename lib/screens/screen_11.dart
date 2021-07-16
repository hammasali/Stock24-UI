import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stock/core/app_info.dart';
import 'package:stock/core/language_literals.dart';
import 'package:stock/core/svgs.dart';
import 'package:stock/screens/screen_12.dart';

class Screen11 extends StatefulWidget {
  const Screen11({Key? key}) : super(key: key);
  static const String routeName = '/screen_11';

  @override
  _Screen11State createState() => _Screen11State();
}

class _Screen11State extends State<Screen11> {
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
          En.en_Title9,
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

  get _body => ListView.separated(
        itemCount: 2,
        padding: const EdgeInsets.only(top: AppInfo.kDefaultPadding),
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.all(AppInfo.kDefaultPadding),

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
                  En.en_AdvanceTrader,
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
                containerRow(En.en_ContactPerson),
                SizedBox(
                  height: AppInfo.getScreenHeight(context) / 120,
                ),
                containerRow(En.en_MobileNumber),
                SizedBox(
                  height: AppInfo.getScreenHeight(context) / 160,
                ),
                Divider(),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    En.en_ViewProductsBtn,
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 16,
                        color: AppInfo.BtnClr2,
                      ),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) => const SizedBox(
          height: 10.0,
        ),
      );

  get _buttons => InkWell(
      onTap: () => Navigator.of(context).pushNamed(Screen12.routeName),
      child: Container(
        width: AppInfo.getScreenWidth(context) / 2,
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
            En.en_EditBtn,
            style: TextStyle(
              fontFamily: 'Skia',
              fontSize: 22,
              color: AppInfo.SplashTxtClr,
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin:
                const EdgeInsets.symmetric(horizontal: AppInfo.kDefaultPadding),
            child: Column(
              children: [
                dataTable(),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    En.en_DealersAssWith,
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 16,
                        color: AppInfo.TextClr,
                      ),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                _body,
                SizedBox(
                  height: AppInfo.getScreenHeight(context) * 0.028,
                ),
                _buttons,
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget dataTable() {
    return DataTable(
        dataTextStyle: GoogleFonts.roboto(
            textStyle: TextStyle(
          fontFamily: 'Roboto',
          fontSize: 16,
          color: AppInfo.TextClr,
        )),
        headingTextStyle: GoogleFonts.roboto(
            textStyle: TextStyle(
          fontFamily: 'Roboto',
          fontSize: 16,
          color: AppInfo.TextClr,
        )),
        dividerThickness: 0.000,
        columnSpacing: AppInfo.getScreenWidth(context) * 0.058,
        headingRowHeight: 0.0,
        columns: [
          DataColumn(label: Text('')),
          DataColumn(label: Text('')),
          DataColumn(label: Text(''))
        ],
        rows: [
          DataRow(cells: [
            DataCell(
                FittedBox(fit: BoxFit.scaleDown, child: Text(En.en_FirmName))),
            DataCell(
                FittedBox(fit: BoxFit.scaleDown, child: Text(':  Data...'))),
            DataCell(Text('')),
          ]),
          DataRow(cells: [
            DataCell(FittedBox(
                fit: BoxFit.scaleDown, child: Text(En.en_ContactPerson))),
            DataCell(
                FittedBox(fit: BoxFit.scaleDown, child: Text(':  Data...'))),
            DataCell(Text('')),
          ]),
          DataRow(cells: [
            DataCell(FittedBox(
                fit: BoxFit.scaleDown, child: Text(En.en_MobileNumber))),
            DataCell(
                FittedBox(fit: BoxFit.scaleDown, child: Text(':  Data...'))),
            DataCell(Text('')),
          ]),
          DataRow(cells: [
            DataCell(FittedBox(
                fit: BoxFit.scaleDown, child: Text(En.en_WhatsappHint))),
            DataCell(
                FittedBox(fit: BoxFit.scaleDown, child: Text(':  Data...'))),
            DataCell(Text('')),
          ]),
          DataRow(cells: [
            DataCell(
                FittedBox(fit: BoxFit.scaleDown, child: Text(En.en_AreaHint))),
            DataCell(
                FittedBox(fit: BoxFit.scaleDown, child: Text(':  Data...'))),
            DataCell(Text('')),
          ]),
          DataRow(cells: [
            DataCell(
                FittedBox(fit: BoxFit.scaleDown, child: Text(En.en_PinCode))),
            DataCell(
                FittedBox(fit: BoxFit.scaleDown, child: Text(':  Data...'))),
            DataCell(Text('')),
          ]),
          DataRow(cells: [
            DataCell(FittedBox(
                fit: BoxFit.scaleDown, child: Text(En.en_VisitingCard))),
            DataCell(FittedBox(
                fit: BoxFit.scaleDown, child: Text(': ${En.en_FrontSide}'))),
            DataCell(
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  En.en_View,
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 16,
                    color: AppInfo.BtnClr2,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
          ]),
          DataRow(cells: [
            DataCell(Text('')),
            DataCell(FittedBox(
                fit: BoxFit.scaleDown, child: Text(': ${En.en_BackSide}'))),
            DataCell(FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                En.en_View,
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 16,
                  color: AppInfo.BtnClr2,
                ),
                textAlign: TextAlign.left,
              ),
            )),
          ]),
        ]);
  }

  Widget containerRow(String _title) {
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
      ],
    );
  }
}
