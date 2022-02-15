import 'package:flutter/material.dart';
import 'package:vakinha_burger_android/app/core/user_interface/vakinha_ui.dart';
import 'package:vakinha_burger_android/app/core/user_interface/widgets/vakinha_appbar.dart';
import 'package:vakinha_burger_android/app/core/user_interface/widgets/vakinha_button.dart';
import 'package:vakinha_burger_android/app/core/user_interface/widgets/vakinha_texformfield.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: VakinhaAppBar(),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Login',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColorDark)),
            Text('Preencha os campos para concluir o cadastro',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColorDark)),
            const SizedBox(
              height: 30,
            ),
            const VakinhaTextFormField(label: 'Email'),
            const SizedBox(
              height: 30,
            ),
            const VakinhaTextFormField(label: 'Senha'),
            const SizedBox(
              height: 50,
            ),
            Center(
                child: VakinhaButton(
                    onPressed: () {},
                    label: 'Login',
                    width: MediaQuery.of(context).size.width)),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Não tem conta?'),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/auth/register');
                  },
                  child: const Text(
                    'Cadastre-se',
                    style: VakinhaUI.textBold,
                  ),
                ),
                
              ],
            )
          ],
        )
        ),
      ),
    );
  }
}
