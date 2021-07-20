import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stock/core/app_info.dart';
import 'package:stock/core/language_literals.dart';
import 'package:stock/core/svgs.dart';

class Screen13 extends StatefulWidget {
  static const String routeName = '/screen_13';

  const Screen13({Key? key}) : super(key: key);

  @override
  _Screen13State createState() => _Screen13State();
}

class _Screen13State extends State<Screen13> {
  get _appBar => AppBar(
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
          En.en_Title11,
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

  get _getSlider => Padding(
        padding: const EdgeInsets.all(AppInfo.kDefaultPadding),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
              width: AppInfo.getScreenWidth(context) / 16,
            ),
            Container(
              height: AppInfo.getScreenHeight(context) * 0.2,
              width: AppInfo.getScreenWidth(context) / 2,
              child: Swiper(
                autoplayDelay: 7000,
                autoplayDisableOnInteraction: true,
                autoplay: true,
                duration: 3000,
                loop: false,
                physics: BouncingScrollPhysics(),
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      image: DecorationImage(
                        image: AssetImage('assets/images/product1.jpg'),
                        fit: BoxFit.fill,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x6c6c62a3),
                          offset: Offset(0, 3),
                          blurRadius: 6,
                        ),
                      ],
                    ),
                  );
                },
                pagination: new SwiperPagination(
                  margin: EdgeInsets.only(bottom: 35),
                  builder: new DotSwiperPaginationBuilder(
                      color: AppInfo.SplashTxtClr,
                      activeColor: AppInfo.SplashBgClr,
                      activeSize: 7.0,
                      size: 8.0),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: SvgPicture.string(
                shareIcon2,
                fit: BoxFit.scaleDown,
                allowDrawingOutsideViewBox: true,
              ),
            )
          ],
        ),
      );

  get _getDetails => Container(
        padding: const EdgeInsets.symmetric(
            horizontal: AppInfo.kDefaultPadding,
            vertical: AppInfo.kDefaultPadding / 2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                En.en_ContactDealer,
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 16,
                    color: AppInfo.TextClr,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                textAlign: TextAlign.left,
              ),
            ),
            SvgPicture.string(
              whatsapp2,
              fit: BoxFit.scaleDown,
              allowDrawingOutsideViewBox: true,
            ),
            SizedBox(
              width: AppInfo.getScreenWidth(context) * 0.08,
            ),
            SvgPicture.string(
              phone,
              fit: BoxFit.scaleDown,
              allowDrawingOutsideViewBox: true,
            ),
          ],
        ),
      );

  get _button => InkWell(
          // onTap: () => Navigator.of(context).pushNamed(Screen12.routeName),
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
            En.en_AddToCartBtn,
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
      appBar: _appBar,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                _getSlider,
                SvgPicture.string(
                  dottedLine,
                  fit: BoxFit.scaleDown,
                  allowDrawingOutsideViewBox: true,
                ),
                _getDetails,
                SvgPicture.string(
                  dottedLine,
                  fit: BoxFit.scaleDown,
                  allowDrawingOutsideViewBox: true,
                ),
                dataTable(),
                SizedBox(
                  height: AppInfo.getScreenHeight(context) * 0.028,
                ),
                _button,
                SizedBox(
                  height: AppInfo.getScreenHeight(context) * 0.028,
                ),
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
        columnSpacing: AppInfo.getScreenWidth(context) * 0.2,
        dividerThickness: 0.000,
        headingRowHeight: 0.0,
        columns: [
          DataColumn(label: Text('')),
          DataColumn(label: Text('')),
          DataColumn(label: Text(''))

        ],
        rows: [
          DataRow(cells: [
            DataCell(FittedBox(
                fit: BoxFit.scaleDown, child: Text(En.en_ProductName))),
            DataCell(
                FittedBox(fit: BoxFit.scaleDown, child: Text(':  Data...'))),
            DataCell(Text('')),

          ]),
          DataRow(cells: [
            DataCell(FittedBox(fit: BoxFit.scaleDown, child: Text(En.en_Size))),
            DataCell(
                FittedBox(fit: BoxFit.scaleDown, child: Text(':  Data...'))),
            DataCell(Text('')),

          ]),
          DataRow(cells: [
            DataCell(FittedBox(fit: BoxFit.scaleDown, child: Text(En.en_Body))),
            DataCell(
                FittedBox(fit: BoxFit.scaleDown, child: Text(':  Data...'))),
            DataCell(Text('')),

          ]),
          DataRow(cells: [
            DataCell(
                FittedBox(fit: BoxFit.scaleDown, child: Text(En.en_Finish))),
            DataCell(
                FittedBox(fit: BoxFit.scaleDown, child: Text(':  Data...'))),
            DataCell(Text('')),

          ]),
          DataRow(cells: [
            DataCell(FittedBox(
                fit: BoxFit.scaleDown, child: Text(En.en_TilesPerBox))),
            DataCell(
                FittedBox(fit: BoxFit.scaleDown, child: Text(':  Data...'))),
            DataCell(Text('')),

          ]),
          DataRow(cells: [
            DataCell(FittedBox(
                fit: BoxFit.scaleDown, child: Text(En.en_SqmtrPerBox))),
            DataCell(
                FittedBox(fit: BoxFit.scaleDown, child: Text(':  Data...'))),
            DataCell(Text('')),

          ]),
          DataRow(cells: [
            DataCell(FittedBox(
                fit: BoxFit.scaleDown, child: Text(En.en_SqftPerBox))),
            DataCell(
                FittedBox(fit: BoxFit.scaleDown, child: Text(':  Data...'))),
            DataCell(Text('')),

          ]),
          DataRow(cells: [
            DataCell(
                FittedBox(fit: BoxFit.scaleDown, child: Text(En.en_AvaQty))),
            DataCell(
                FittedBox(fit: BoxFit.scaleDown, child: Text(':  Data...'))),
            DataCell(Text('')),

          ]),
          DataRow(cells: [
            DataCell(Text('')),
            DataCell(
                FittedBox(fit: BoxFit.scaleDown, child: Text(':  Data...'))),
            DataCell(Text('')),

          ]),
          DataRow(cells: [
            DataCell(Text('')),
            DataCell(
                FittedBox(fit: BoxFit.scaleDown, child: Text(':  Data...'))),
            DataCell(Text('')),

          ]),
          DataRow(cells: [
            DataCell(
                FittedBox(fit: BoxFit.scaleDown, child: Text(En.en_Price))),
            DataCell(
                FittedBox(fit: BoxFit.scaleDown, child: Text(':  Data...'))),
            DataCell(Text('')),

          ]),
          DataRow(cells: [
            DataCell(FittedBox(fit: BoxFit.scaleDown, child: Text(En.en_MRP))),
            DataCell(
                FittedBox(fit: BoxFit.scaleDown, child: Text(':  Data...'))),
            DataCell(Text('')),

          ]),
          DataRow(cells: [
            DataCell(
                FittedBox(fit: BoxFit.scaleDown, child: Text(En.en_Status))),
            DataCell(
                FittedBox(fit: BoxFit.scaleDown, child: Text(':  Data...'))),
            DataCell(Text('')),

          ]),
        ]);
  }
}
// Container(
//   height: 100,
//   width: 100,
//   child: CarouselSlider.builder(
//     itemCount: 4,
//     unlimitedMode: false,
//     slideBuilder: (index) {
//       return Container(
//         height: 100,
//         width: 100,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(5.0),
//           image: DecorationImage(
//             image: AssetImage('assets/images/product1.jpg'),
//             fit: BoxFit.cover,
//           ),
//           boxShadow: [
//             BoxShadow(
//               color: const Color(0x6c6c62a3),
//               offset: Offset(0, 3),
//               blurRadius: 6,
//             ),
//           ],
//         ),
//       );
//     },
//     slideTransform: CubeTransform(),
//     slideIndicator: CircularSlideIndicator(
//       alignment: Alignment.bottomCenter,
//         padding: EdgeInsets.only(bottom: 20),
//         itemSpacing: 10.0,
//         indicatorBackgroundColor: Colors.white,
//         currentIndicatorColor: const Color(0xfffd705e),
//         indicatorRadius: 4),
//   ),
// ),
