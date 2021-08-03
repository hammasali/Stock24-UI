import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stock/core/app_info.dart';
import 'package:stock/core/language_literals.dart';
import 'package:stock/core/svgs.dart';

class Screen14 extends StatefulWidget {
  static const String routeName = '/screen_14';

  const Screen14({Key? key}) : super(key: key);

  @override
  _Screen14State createState() => _Screen14State();
}

class _Screen14State extends State<Screen14> {
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
          En.en_Title13,
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

  get _product => Center(
        child: Container(
          margin:
              const EdgeInsets.symmetric(horizontal: AppInfo.kDefaultPadding),
          height: AppInfo.getScreenHeight(context) * 0.2,
          width: AppInfo.getScreenWidth(context) / 2,
          child: Container(
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
          ),
        ),
      );

  get _addProduct => SizedBox(
        height: AppInfo.getScreenHeight(context) * 0.14,
        child: ListView.separated(
          itemCount: 3,
          physics:
              BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          padding:
              const EdgeInsets.symmetric(horizontal: AppInfo.kDefaultPadding),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            if (index == 0)
              return Stack(
                children: [
                  Container(
                    width: AppInfo.getScreenWidth(context) * 0.28,
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
                  ),
                  Positioned(
                    top: 0.0,
                    right: 0.0,
                    child: Container(
                        height: AppInfo.getScreenHeight(context) * 0.028,
                        width: AppInfo.getScreenHeight(context) * 0.028,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40.0),
                          color: AppInfo.BgClr,
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0x29000000),
                              offset: Offset(0, 3),
                              blurRadius: 6,
                            ),
                          ],
                        ),
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Center(
                              child: Icon(
                            Icons.close,
                            color: AppInfo.AsteriskClr,
                          )),
                        )),
                  ),
                ],
              );

            if (index == 1) {
              return Stack(
                children: <Widget>[
                  Container(
                    width: AppInfo.getScreenWidth(context) * 0.28,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: AppInfo.BgClr,
                      border:
                          Border.all(width: 1.0, color: AppInfo.SplashBgClr),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x29000000),
                          offset: Offset(0, 3),
                          blurRadius: 6,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    left: 0,
                    bottom: 0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.string(
                          uploadIcon,
                          fit: BoxFit.scaleDown,
                          allowDrawingOutsideViewBox: true,
                        ),
                        SvgPicture.string(
                          uploadIconLogo,
                          fit: BoxFit.scaleDown,
                          allowDrawingOutsideViewBox: true,
                        ),
                      ],
                    ),
                  )
                ],
              );
            }
            return Container(
              width: AppInfo.getScreenWidth(context) * 0.28,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: AppInfo.BgClr,
                border: Border.all(width: 1.0, color: AppInfo.SplashBgClr),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
              child: Center(
                child: SvgPicture.string(
                  addIcon,
                  fit: BoxFit.scaleDown,
                  allowDrawingOutsideViewBox: true,
                ),
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) =>
              SizedBox(width: AppInfo.getScreenWidth(context) * 0.028),
        ),
      );

  get _productField => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          border: Border.all(width: 1.0, color: AppInfo.TextFieldBorderClr),
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
            hintText: En.en_ProductNameHint,
            hintStyle: GoogleFonts.roboto(
              textStyle: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 18,
              ),
            ),
          ),
        ),
      );

  get _sizeField => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          border: Border.all(width: 1.0, color: AppInfo.TextFieldBorderClr),
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
            hintText: En.en_SizeHint,
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

  get _bodyField => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          border: Border.all(width: 1.0, color: AppInfo.TextFieldBorderClr),
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
            hintText: En.en_BodyHint,
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

  get _finishField => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          border: Border.all(width: 1.0, color: AppInfo.TextFieldBorderClr),
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
            hintText: En.en_FinishHint,
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

  get _tilesPerBoxField => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          border: Border.all(width: 1.0, color: AppInfo.TextFieldBorderClr),
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
            hintText: En.en_TilesPerBoxHint,
            hintStyle: GoogleFonts.roboto(
              textStyle: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 18,
              ),
            ),
          ),
        ),
      );

  get _sqmtrPerBoxField => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          border: Border.all(width: 1.0, color: AppInfo.TextFieldBorderClr),
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
            hintText: En.en_SqmtrPerBoxHint,
            hintStyle: GoogleFonts.roboto(
              textStyle: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 18,
              ),
            ),
          ),
        ),
      );

  get _sqftPerBoxField => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          border: Border.all(width: 1.0, color: AppInfo.TextFieldBorderClr),
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
            hintText: En.en_SqftPerBoxHint,
            hintStyle: GoogleFonts.roboto(
              textStyle: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 18,
              ),
            ),
          ),
        ),
      );

  get _b1Field => Container(
        width: AppInfo.getScreenWidth(context) / 2,
        padding: const EdgeInsets.all(AppInfo.kDefaultPadding),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: AppInfo.BoxClr,
          border: Border.all(width: 1.0, color: AppInfo.TextFieldBorderClr),
        ),
        child: Center(
          child: Text(
            'B1',
            style: GoogleFonts.roboto(
              textStyle: TextStyle(
                  fontFamily: 'Roboto', fontSize: 18, color: AppInfo.TextClr),
            ),
            textAlign: TextAlign.left,
          ),
        ),
      );

  get _boxQty => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          border: Border.all(width: 1.0, color: AppInfo.TextFieldBorderClr),
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
            hintText: En.en_BoxQtyHint,
            hintStyle: GoogleFonts.roboto(
              textStyle: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 18,
              ),
            ),
          ),
        ),
      );

  get _priceTextField => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          border: Border.all(width: 1.0, color: AppInfo.TextFieldBorderClr),
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
            hintText: En.en_PriceHint,
            hintStyle: GoogleFonts.roboto(
              textStyle: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 18,
              ),
            ),
          ),
        ),
      );

  get _mrpTextField => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          border: Border.all(width: 1.0, color: AppInfo.TextFieldBorderClr),
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
            hintText: En.en_MRPHint,
            hintStyle: GoogleFonts.roboto(
              textStyle: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 18,
              ),
            ),
          ),
        ),
      );

  get _statusTextField => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          border: Border.all(width: 1.0, color: AppInfo.TextFieldBorderClr),
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
            hintText: En.en_StatusHint,
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

  get _button => InkWell(
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
            En.en_AddProductBtn,
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
            margin:
                const EdgeInsets.symmetric(vertical: AppInfo.kDefaultPadding),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _product,
                SizedBox(
                  height: AppInfo.getScreenHeight(context) * 0.028,
                ),
                SvgPicture.string(
                  dottedLine,
                  fit: BoxFit.scaleDown,
                  allowDrawingOutsideViewBox: true,
                ),
                SizedBox(
                  height: AppInfo.getScreenHeight(context) * 0.018,
                ),
                _addProduct,
                SizedBox(
                  height: AppInfo.getScreenHeight(context) * 0.018,
                ),
                SvgPicture.string(
                  dottedLine,
                  fit: BoxFit.scaleDown,
                  allowDrawingOutsideViewBox: true,
                ),
                SizedBox(
                  height: AppInfo.getScreenHeight(context) * 0.048,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                      horizontal: AppInfo.kDefaultPadding),
                  child: Column(
                    children: [
                      _productField,
                      SizedBox(
                        height: AppInfo.getScreenHeight(context) * 0.028,
                      ),
                      Row(
                        children: [
                          Expanded(child: _sizeField),
                          SizedBox(
                            width: AppInfo.getScreenWidth(context) * 0.028,
                          ),
                          Expanded(child: _bodyField),
                        ],
                      ),
                      SizedBox(
                        height: AppInfo.getScreenHeight(context) * 0.028,
                      ),
                      Row(
                        children: [
                          Expanded(child: _finishField),
                          SizedBox(
                            width: AppInfo.getScreenWidth(context) * 0.028,
                          ),
                          Expanded(child: _tilesPerBoxField),
                        ],
                      ),
                      SizedBox(
                        height: AppInfo.getScreenHeight(context) * 0.028,
                      ),
                      Row(
                        children: [
                          Expanded(child: _sqmtrPerBoxField),
                          SizedBox(
                            width: AppInfo.getScreenWidth(context) * 0.028,
                          ),
                          Expanded(child: _sqftPerBoxField),
                        ],
                      ),
                      SizedBox(
                        height: AppInfo.getScreenHeight(context) * 0.028,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text.rich(
                            TextSpan(
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 18,
                                    color: AppInfo.TextClr),
                              ),
                              children: [
                                TextSpan(
                                  text: En.en_Quantity,
                                ),
                                TextSpan(
                                  text: ' *',
                                  style: TextStyle(
                                    color: AppInfo.AsteriskClr,
                                  ),
                                ),
                              ],
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            textAlign: TextAlign.left,
                          ),
                          Text(
                            En.en_AddBatch,
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 16,
                              color: AppInfo.BtnClr2,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: AppInfo.getScreenHeight(context) * 0.028,
                      ),
                      Row(
                        children: [
                          Expanded(child: _b1Field),
                          SizedBox(
                            width: AppInfo.getScreenWidth(context) * 0.028,
                          ),
                          Expanded(child: _boxQty),
                        ],
                      ),
                      SizedBox(
                        height: AppInfo.getScreenHeight(context) * 0.028,
                      ),
                      _priceTextField,
                      SizedBox(
                        height: AppInfo.getScreenHeight(context) * 0.028,
                      ),
                      _mrpTextField,
                      SizedBox(
                        height: AppInfo.getScreenHeight(context) * 0.028,
                      ),
                      _statusTextField,
                      SizedBox(
                        height: AppInfo.getScreenHeight(context) * 0.058,
                      ),
                      _button,
                      SizedBox(
                        height: AppInfo.getScreenHeight(context) * 0.038,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
