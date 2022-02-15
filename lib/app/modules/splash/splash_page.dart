import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vakinha_burger_android/app/core/user_interface/widgets/vakinha_button.dart';
import 'package:vakinha_burger_android/main.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFF140E0E),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                width: context.width,
                child: Image.asset('assets/images/lanche.png', fit: BoxFit.cover,),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .15,
                    // height: context.heightTransformer(reduceBy: 85)),
                  ),
                  Image.asset('assets/images/logo.png'),
                  const SizedBox(
                    height: 60,
                  ),
                  VakinhaButton(onPressed: () {
                    Navigator.pushNamed(context, '/auth/login');
                  }, label: 'Acessar', width: MediaQuery.of(context).size.height * .40, height: 35,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
