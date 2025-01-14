import 'package:flutter/material.dart';
import 'package:mobileapp/core/components/exporting_packages.dart';
import 'package:mobileapp/core/components/my_decoration.dart';
import 'package:mobileapp/core/constants/app_images.dart';
import 'package:mobileapp/screens/on_boarding/on_boarding_page.dart';
import 'package:mobileapp/translations/locale_keys.g.dart';
import 'package:mobileapp/widgets/lets_go.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Container(
        decoration: MyDecoration.assetImage(assetImage: AppImages.initial),
        child: Column(
          children: [
            const LetsGo(text: 'Добро пожаловать!', color: AppColors.black),
            const Spacer(),
            OutlinedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_)=> OnBoardingPage()));
              },
              child: Text(
                LocaleKeys.start.tr(),
                style:
                    TextStyle(color: AppColors.white, fontSize: getWidth(20.0)),
              ),
              style: ElevatedButton.styleFrom(
                  padding: MyEdgeInsets.symmetric(h: 109.0, v: 17.0),
                  primary: AppColors.white.withOpacity(0.15),
                  side: const BorderSide(color: AppColors.white)),
            ),
            SizedBox(height: getHeight(40.0)),
          ],
        ),
      ),
    );
  }
}
