import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stock/core/app_info.dart';
import 'package:stock/core/language_literals.dart';
import 'package:stock/core/svgs.dart';

class Screen12 extends StatefulWidget {
  static const String routeName = '/screen_12';

  const Screen12({Key? key}) : super(key: key);

  @override
  _Screen12State createState() => _Screen12State();
}

class _Screen12State extends State<Screen12> {
  AppCheck? appCheck;

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
          En.en_Title10,
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

  get _search => Container(
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
            contentPadding: const EdgeInsets.all(AppInfo.kDefaultPadding),
            hintText: En.en_SearchHint,
            hintStyle: GoogleFonts.roboto(
              textStyle: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 18,
              ),
            ),
          ),
        ),
      );

  get _filter => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '${En.en_TotalProducts}  : 14',
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
      );

  get _getBody => Expanded(
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: AppInfo.kDefaultPadding * 1.2,
          mainAxisSpacing: AppInfo.kDefaultPadding,
          scrollDirection: Axis.vertical,
          physics:
              BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          shrinkWrap: false,
          children: List.generate(6, (index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          image: DecorationImage(
                            image: AssetImage('assets/images/product1.jpg'),
                            fit: BoxFit.cover,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0x29000000),
                              offset: Offset(0, 3),
                              blurRadius: 6,
                            ),
                          ],
                        ),
                      ),
                      AppCheck(index: index),
                    ],
                  ),
                ),
                SizedBox(
                  height: AppInfo.getScreenHeight(context) * 0.028,
                ),
                Text(
                  'Delmon Beige',
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 18,
                      color: AppInfo.TextClr,
                    ),
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            );
          }),
        ),
      );

  get _actionDialog => Container(
        padding:
            const EdgeInsets.symmetric(horizontal: AppInfo.kDefaultPadding),
        height: AppInfo.getScreenHeight(context) * 0.12,
        decoration: BoxDecoration(
          color: AppInfo.BgClr,
          boxShadow: [
            BoxShadow(
              color: const Color(0x29000000),
              offset: Offset(0, 3),
              blurRadius: 6,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              '${En.en_Selected} : 15',
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {},
                  child: Wrap(
                    children: [
                      SvgPicture.string(
                        shareIcon,
                        fit: BoxFit.scaleDown,
                        allowDrawingOutsideViewBox: true,
                      ),
                      SizedBox(
                        width: AppInfo.getScreenWidth(context) * 0.018,
                      ),
                      Text(
                        En.en_ShareImageOnly,
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
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Wrap(
                    children: [
                      SvgPicture.string(
                        shareIcon2,
                        fit: BoxFit.scaleDown,
                        allowDrawingOutsideViewBox: true,
                      ),
                      SizedBox(
                        width: AppInfo.getScreenWidth(context) * 0.018,
                      ),
                      Text(
                        En.en_ShareWithDetails,
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
                  ),
                )
              ],
            )
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(
                  horizontal: AppInfo.kDefaultPadding),
              child: Column(
                children: [
                  SizedBox(
                    height: AppInfo.getScreenHeight(context) * 0.02,
                  ),
                  _search,
                  SizedBox(
                    height: AppInfo.getScreenHeight(context) * 0.028,
                  ),
                  _filter,
                  SizedBox(
                    height: AppInfo.getScreenHeight(context) * 0.028,
                  ),
                  _getBody,
                ],
              ),
            ),
            AppCheck.check
                ? Align(
                    alignment: Alignment.bottomCenter,
                    child: _actionDialog,
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}

class AppCheck extends StatefulWidget {
  final int? index;
  static bool check = false;

  const AppCheck({Key? key, this.index}) : super(key: key);

  @override
  _AppCheckState createState() => _AppCheckState();
}

class _AppCheckState extends State<AppCheck> {

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.bottomRight,
        child: Theme(
          data: ThemeData(
            unselectedWidgetColor: AppInfo.BtnClr2,
          ),
          child: Checkbox(
              visualDensity: VisualDensity.adaptivePlatformDensity,
              activeColor: AppInfo.BtnClr2,
              shape: AppCheck.check ? CircleBorder() : null,
              value: AppCheck.check,
              onChanged: (value) {
                setState(() {
                  AppCheck.check = !AppCheck.check;
                });
              }),
        ));
  }
}
// GridView.builder(
//     shrinkWrap: true,
//     itemCount: 6,
//     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: (MediaQuery.of(context).orientation ==
//                 Orientation.portrait)
//             ? 2
//             : 3),
//     itemBuilder: (context, index) {
//       return Stack(
//         children: [
//           Container(
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage('assets/images/product1.jpg'),
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//           Align(
//               alignment: Alignment.bottomRight,
//               child: Theme(
//                 data: ThemeData(
//                   unselectedWidgetColor: AppInfo.BtnClr2,
//                 ),
//                 child: Checkbox(
//                     visualDensity:
//                         VisualDensity.adaptivePlatformDensity,
//                     activeColor: AppInfo.BtnClr2,
//                     // shape: CircleBorder(),
//                     value: false,
//                     onChanged: (value) {}),
//               ))
//         ],
//       );
//     }),
