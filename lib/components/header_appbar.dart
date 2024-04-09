import 'package:attendance/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:getwidget/getwidget.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

AppBar appBarMainPage(BuildContext context) {
  const themes = WoltModalSheetThemeData(
    animationStyle: WoltModalSheetAnimationStyle(
      paginationAnimationStyle: WoltModalSheetPaginationAnimationStyle(
        mainContentIncomingOpacityCurve: Interval(
          150 / 350,
          350 / 350,
          curve: Curves.linear,
        ),
        modalSheetHeightTransitionCurve: Interval(
          0 / 350,
          300 / 350,
          curve: Curves.fastOutSlowIn,
        ),
        incomingSabOpacityCurve: Interval(
          100 / 350,
          300 / 350,
          curve: Curves.linear,
        ),
      ),
      scrollAnimationStyle: WoltModalSheetScrollAnimationStyle(
        heroImageScaleStart: 1.0,
        heroImageScaleEnd: 0.9,
        topBarTitleTranslationYInPixels: 8.0,
        topBarTranslationYInPixels: 4.0,
      ),
    ),
  );
  return AppBar(
    leadingWidth: 200,
    leading: const Padding(
      padding: EdgeInsets.only(left: 20),
      child: Row(
        children: [
          GFAvatar(
            backgroundImage: NetworkImage(
                "https://64.media.tumblr.com/fe97a360a6766ca7112f0b17d7304b4a/tumblr_nxxc53uJvV1u60tx6o1_1280.jpg"),
            size: 30,
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Nasri Adzlani",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Software Engineer",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          )
        ],
      ),
    ),
    backgroundColor: primaryColor,
    foregroundColor: Colors.white,
    toolbarHeight: 80,
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 20),
        child: Align(
          alignment: Alignment.center,
          child: SizedBox(
            width: 50,
            height: 50,
            child: GFButton(
              onPressed: () {
                WoltModalSheet.show(
                  context: context,
                  pageListBuilder: (ctx) {
                    return [
                      WoltModalSheetPage(
                        hasTopBarLayer: true,
                        surfaceTintColor: Colors.white,
                        backgroundColor: Colors.white,
                        child: Container(
                          color: Colors.white,
                          child: const Padding(
                            padding: EdgeInsets.only(bottom: 20),
                            child: Center(
                              child: Text(
                                "Notifications",
                                style: TextStyle(
                                  fontFamily: defaultFont,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ];
                  },
                );
              },
              color: primaryColor,
              icon: const Icon(
                Icons.notifications,
                color: Colors.white,
              ),
              text: "",
            ),
          ),
        ),
      ),
    ],
  );
}
