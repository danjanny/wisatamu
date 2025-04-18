import 'package:flutter/material.dart';
import 'package:qlevar_router/qlevar_router.dart';
import 'package:skeleton/base/presentation/icons/icon_asset.dart';
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
    Future.delayed(const Duration(seconds: 3), () {
      // QR.replace(MyRoutes.rootPath, MyRoutes.mainPagePath);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Image.asset(
          IconAsset.mezisanSplashScreenIcon,
          width: 200,
        ),
      ),
    );
  }
}
