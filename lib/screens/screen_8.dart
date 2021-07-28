import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stock/core/app_info.dart';
import 'package:stock/core/language_literals.dart';
import 'package:stock/core/svgs.dart';
import 'package:stock/screens/screen_9.dart';

class Screen8 extends StatefulWidget {
  const Screen8({Key? key}) : super(key: key);
  static const String routeName = '/screen_8';

  @override
  _Screen8State createState() => _Screen8State();
}

class _Screen8State extends State<Screen8> {

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
          En.en_Tittle6,
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
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  En.en_ViewProductBtn,
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
      ),
      SizedBox(
        width: AppInfo.getScreenHeight(context) * 0.028,
      ),
      Expanded(
        child: InkWell(
          onTap: () => Navigator.of(context).pushNamed(Screen9.routeName),
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
                En.en_EditBtn,
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
    return Scaffold(
      appBar: _appBar(context),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin:
                const EdgeInsets.symmetric(horizontal: AppInfo.kDefaultPadding),
            child: Column(
              children: [
                heading(En.en_PersonalDetails2),
                dataTable(),
                heading(En.en_BillingDetails2),
                dataTable2(),
                heading(En.en_BankDetails2),
                dataTable3(),
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

  heading(String title) {
    return Column(
      children: [
        SvgPicture.string(
          dottedLine,
          fit: BoxFit.scaleDown,
          allowDrawingOutsideViewBox: true,
        ),
        SizedBox(
          height: AppInfo.getScreenHeight(context) * 0.018,
        ),
        Text(
          title,
          style: GoogleFonts.roboto(
            textStyle: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 15,
                color: AppInfo.TextClr,
                fontWeight: FontWeight.w500),
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: AppInfo.getScreenHeight(context) * 0.018,
        ),
        SvgPicture.string(
          dottedLine,
          fit: BoxFit.scaleDown,
          allowDrawingOutsideViewBox: true,
        ),
      ],
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
                fit: BoxFit.scaleDown, child: Text(En.en_WhatsAppNumber))),
            DataCell(
                FittedBox(fit: BoxFit.scaleDown, child: Text(':  Data...'))),
            DataCell(Text('')),
          ]),
          DataRow(cells: [
            DataCell(
                FittedBox(fit: BoxFit.scaleDown, child: Text(En.en_EmailID))),
            DataCell(
                FittedBox(fit: BoxFit.scaleDown, child: Text(':  Data...'))),
            DataCell(Text('')),
          ]),
          DataRow(cells: [
            DataCell(FittedBox(
                fit: BoxFit.scaleDown, child: Text(En.en_MarketingPersonal))),
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

  Widget dataTable2() {
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
        columnSpacing: AppInfo.getScreenWidth(context) * 0.158,
        headingRowHeight: 0.0,
        columns: [
          DataColumn(label: Text('')),
          DataColumn(label: Text('')),
          DataColumn(label: Text(''))
        ],
        rows: [
          DataRow(cells: [
            DataCell(
                FittedBox(fit: BoxFit.scaleDown, child: Text(En.en_GSTNumber))),
            DataCell(
                FittedBox(fit: BoxFit.scaleDown, child: Text(':  Data...'))),
            DataCell(Text('')),
          ]),
          DataRow(cells: [
            DataCell(FittedBox(
                fit: BoxFit.scaleDown, child: Text(En.en_PANNumber))),
            DataCell(
                FittedBox(fit: BoxFit.scaleDown, child: Text(':  Data...'))),
            DataCell(Text('')),
          ]),
          DataRow(cells: [
            DataCell(FittedBox(
                fit: BoxFit.scaleDown, child: Text(En.en_BillingAddress))),
            DataCell(
                FittedBox(fit: BoxFit.scaleDown, child: Text(':  Data...'))),
            DataCell(Text('')),
          ]),
          DataRow(cells: [
            DataCell(FittedBox(
                fit: BoxFit.scaleDown, child: Text(En.en_PinCode))),
            DataCell(
                FittedBox(fit: BoxFit.scaleDown, child: Text(':  Data...'))),
            DataCell(Text('')),
          ]),
          DataRow(cells: [
            DataCell(
                FittedBox(fit: BoxFit.scaleDown, child: Text(En.en_City))),
            DataCell(
                FittedBox(fit: BoxFit.scaleDown, child: Text(':  Data...'))),
            DataCell(Text('')),
          ]),
          DataRow(cells: [
            DataCell(FittedBox(
                fit: BoxFit.scaleDown, child: Text(En.en_State))),
            DataCell(
                FittedBox(fit: BoxFit.scaleDown, child: Text(':  Data...'))),
            DataCell(Text('')),
          ]),
          DataRow(cells: [
            DataCell(FittedBox(
                fit: BoxFit.scaleDown, child: Text(En.en_Country))),
            DataCell(
                FittedBox(fit: BoxFit.scaleDown, child: Text(':  Data...'))),
            DataCell(Text('')),
          ]),
        ]);
  }

  Widget dataTable3() {
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
        columnSpacing: AppInfo.getScreenWidth(context) * 0.158,
        headingRowHeight: 0.0,
        columns: [
          DataColumn(label: Text('')),
          DataColumn(label: Text('')),
          DataColumn(label: Text(''))
        ],
        rows: [
          DataRow(cells: [
            DataCell(
                FittedBox(fit: BoxFit.scaleDown, child: Text(En.en_BankName))),
            DataCell(
                FittedBox(fit: BoxFit.scaleDown, child: Text(':  Data...'))),
            DataCell(Text('')),
          ]),
          DataRow(cells: [
            DataCell(FittedBox(
                fit: BoxFit.scaleDown, child: Text(En.en_BranchName))),
            DataCell(
                FittedBox(fit: BoxFit.scaleDown, child: Text(':  Data...'))),
            DataCell(Text('')),
          ]),
          DataRow(cells: [
            DataCell(FittedBox(
                fit: BoxFit.scaleDown, child: Text(En.en_AccountType))),
            DataCell(
                FittedBox(fit: BoxFit.scaleDown, child: Text(':  Data...'))),
            DataCell(Text('')),
          ]),
          DataRow(cells: [
            DataCell(FittedBox(
                fit: BoxFit.scaleDown, child: Text(En.en_AccountNum))),
            DataCell(
                FittedBox(fit: BoxFit.scaleDown, child: Text(':  Data...'))),
            DataCell(Text('')),
          ]),
          DataRow(cells: [
            DataCell(
                FittedBox(fit: BoxFit.scaleDown, child: Text(En.en_IFCSCode))),
            DataCell(
                FittedBox(fit: BoxFit.scaleDown, child: Text(':  Data...'))),
            DataCell(Text('')),
          ]),
        ]);
  }
// Widget dataTable(String _title, String _info, bool isView) {
//   return DataTable(
//       headingTextStyle: GoogleFonts.roboto(
//           textStyle: TextStyle(
//             fontFamily: 'Roboto',
//             fontSize: 16,
//             color: AppInfo.TextClr,
//           )),
//       dividerThickness: 0.000,
//       dataRowHeight: 0.0,
//       headingRowHeight: AppInfo.getScreenHeight(context) * 0.038,
//       columnSpacing: AppInfo.getScreenWidth(context) * 0.138,
//       columns: [
//         DataColumn(
//             label:
//             Expanded(child: Text(_title))),
//         DataColumn(
//             label:
//             Expanded(child: Text(':  Data...'))),
//         DataColumn(
//             label: FittedBox(
//               fit: BoxFit.scaleDown,
//               child: Visibility(
//                 visible: isView,
//                 maintainAnimation: true,
//                 maintainSize: true,
//                 maintainState: true,
//                 child: Text(
//                   'View',
//                   style: TextStyle(
//                     fontFamily: 'Roboto',
//                     fontSize: 16,
//                     color: AppInfo.BtnClr2,
//                   ),
//                   textAlign: TextAlign.left,
//                 ),
//               ),
//             ))
//       ],
//       rows: []);
// }

// Widget containerRow(String _title, String info, bool isView) {
//     return Row(
//       children: [
//         Text(
//           _title,
//           style: GoogleFonts.roboto(
//             textStyle: TextStyle(
//               fontFamily: 'Roboto',
//               fontSize: 16,
//               color: AppInfo.TextClr,
//             ),
//           ),
//           textAlign: TextAlign.left,
//         ),
//         Expanded(
//           flex: 2,
//           child: Center(
//             child: Text(
//               ':  Data...',
//               style: GoogleFonts.roboto(
//                 textStyle: TextStyle(
//                   fontFamily: 'Roboto',
//                   fontSize: 16,
//                   color: AppInfo.TextClr,
//                 ),
//               ),
//               textAlign: TextAlign.left,
//             ),
//           ),
//         ),
//         Visibility(
//           visible: isView,
//           maintainAnimation: true,
//           maintainSize: true,
//           maintainState: true,
//           child: Text(
//             'View',
//             style: TextStyle(
//               fontFamily: 'Roboto',
//               fontSize: 16,
//               color: AppInfo.BtnClr2,
//             ),
//             textAlign: TextAlign.left,
//           ),
//         )
//       ],
//     );
//   }

}
