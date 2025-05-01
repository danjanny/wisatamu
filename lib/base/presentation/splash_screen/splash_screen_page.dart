import 'package:flutter/material.dart';
import 'package:qlevar_router/qlevar_router.dart';
import 'package:skeleton/base/presentation/icons/icon_asset.dart';
import 'package:skeleton/base/presentation/styles/text_styles.dart';
import 'package:skeleton/route/my_routes.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1), () {
      QR.replace(MyRoutes.rootPath, MyRoutes.homePath);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // child: Image.asset(
        //   IconAsset.mezisanSplashScreenIcon,
        //   width: 200,
        // ),
        child: Text('Merchanted', style: TextStyles.body16Bold.copyWith(
          fontSize: 30
        )),
      ),
    );
  }
}
