import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stock/core/app_info.dart';
import 'package:stock/core/language_literals.dart';
import 'package:stock/core/svgs.dart';
import 'package:stock/screens/screen_2.dart';

class Screen1 extends StatelessWidget {
  static const String routeName = '/screen1';

  Screen1({Key? key}) : super(key: key);

  final List<String> icons = [icon1, icon2, icon3, icon4, icon5];
  final List<String> title = [
    En.en_MarketingPersonal,
    En.en_Dealers,
    En.en_SubDealers,
    En.en_Products,
    En.en_Orders
  ];

//TODO: CUSTOM APP BAR
  // get _app => Container(
  //     color: AppInfo.BgClr,
  //     height: 70.0,
  //     child: Row(
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       mainAxisAlignment: MainAxisAlignment.spaceAround,
  //       children: [
  //         Align(
  //           alignment: Alignment.center,
  //           child: SvgPicture.string(
  //             menu_icon,
  //             fit: BoxFit.scaleDown,
  //             allowDrawingOutsideViewBox: true,
  //           ),
  //         ),
  //         Column(
  //           mainAxisAlignment: MainAxisAlignment.start,
  //           children: [
  //             FittedBox(
  //               fit: BoxFit.scaleDown,
  //               child: Text.rich(
  //                 TextSpan(
  //                   style: TextStyle(
  //                     fontFamily: 'Skia',
  //                     fontSize: 33,
  //                     color: AppInfo.TextClr,
  //                   ),
  //                   children: [
  //                     TextSpan(
  //                       text: En.en_SplashTitle,
  //                     ),
  //                     TextSpan(
  //                       text: En.en_SplashTitle2,
  //                       style: TextStyle(
  //                         fontFamily: 'Papyrus',
  //                       ),
  //                     ),
  //                   ],
  //                 ),
  //                 textHeightBehavior:
  //                     TextHeightBehavior(applyHeightToFirstAscent: false),
  //                 textAlign: TextAlign.left,
  //               ),
  //             ),
  //             FittedBox(
  //               fit: BoxFit.scaleDown,
  //               child: Text(
  //                 En.en_SplashSubTitle,
  //                 style: TextStyle(
  //                   fontFamily: 'Skia',
  //                   fontSize: 15,
  //                   color: AppInfo.TextClr,
  //                 ),
  //                 textAlign: TextAlign.left,
  //               ),
  //             ),
  //           ],
  //         ),
  //         SizedBox(
  //           width: 10.0,
  //         )
  //       ],
  //     ));

  get _appBar => AppBar(
        backgroundColor: AppInfo.BgClr,
        elevation: 0.0,
        backwardsCompatibility: false,
        brightness: Brightness.dark,
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: AppInfo.BgClr,
            statusBarBrightness: Brightness.dark,
            statusBarIconBrightness: Brightness.dark,
            systemNavigationBarIconBrightness: Brightness.dark),
        toolbarHeight: 70.0,
        centerTitle: true,
        leading: SvgPicture.string(
          menu_icon,
          fit: BoxFit.scaleDown,
          allowDrawingOutsideViewBox: true,
        ),
        title: Column(
          children: [
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text.rich(
                TextSpan(
                  style: TextStyle(
                    fontFamily: 'Skia',
                    fontSize: 33,
                    color: AppInfo.TextClr,
                  ),
                  children: [
                    TextSpan(
                      text: En.en_SplashTitle,
                    ),
                    TextSpan(
                      text: En.en_SplashTitle2,
                      style: TextStyle(
                        fontFamily: 'Papyrus',
                      ),
                    ),
                  ],
                ),
                textHeightBehavior:
                    TextHeightBehavior(applyHeightToFirstAscent: false),
                textAlign: TextAlign.left,
              ),
            ),
            Text(
              En.en_SplashSubTitle,
              style: TextStyle(
                fontFamily: 'Skia',
                fontSize: 15,
                color: AppInfo.TextClr,
              ),
              textAlign: TextAlign.left,
            ),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppInfo.BgClr,
      appBar: _appBar,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                padding: const EdgeInsets.only(top: 5.0),
                shrinkWrap: false,
                itemCount: icons.length,
                physics: BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics()),
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () =>
                        Navigator.of(context).pushNamed(Screen2.routeName),
                    child: Container(
                        padding: const EdgeInsets.only(
                            left: 30.0, top: 50.0, bottom: 30.0, right: 20.0),
                        margin: const EdgeInsets.symmetric(horizontal: 15),
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
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SvgPicture.string(
                              icons[index],
                              height: 25.0,
                              fit: BoxFit.scaleDown,
                              allowDrawingOutsideViewBox: true,
                            ),
                            SizedBox(
                              width: 30.0,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  title[index],
                                  style: TextStyle(
                                    fontFamily: 'Skia',
                                    fontSize: 22,
                                    color: AppInfo.TextClr,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                                SizedBox(
                                  height: AppInfo.getScreenHeight(context) / 48,
                                ),
                                Text(
                                  '${En.en_Total} : 124',
                                  style: TextStyle(
                                    fontFamily: 'Skia',
                                    fontSize: 15,
                                    color: AppInfo.TextClr,
                                  ),
                                  textAlign: TextAlign.left,
                                )
                              ],
                            )
                          ],
                        )),
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(
                  height: 10.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
