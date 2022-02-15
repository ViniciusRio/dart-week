import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vakinha_burger_android/app/core/user_interface/widgets/vakinha_appbar.dart';
import 'package:vakinha_burger_android/app/core/user_interface/widgets/vakinha_button.dart';
import 'package:vakinha_burger_android/app/core/user_interface/widgets/vakinha_texformfield.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: VakinhaAppBar(),
      backgroundColor: Colors.white,
      body: LayoutBuilder(
        builder: (_, constraints) {
          return ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight),
            child: IntrinsicHeight(
              child: Padding(
                padding: const EdgeInsets.all(20.00),
                child: Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Registrar',
                          style: context.textTheme.headline6?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: context.theme.primaryColorDark)),
                      Text(
                        'Preencha os campos para completar o seu cadastro',
                        style: context.textTheme.bodyText1,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const VakinhaTextFormField(label: 'Nome'),
                      const SizedBox(
                        height: 30,
                      ),
                      const VakinhaTextFormField(label: 'Email'),
                      const SizedBox(
                        height: 30,
                      ),
                      const VakinhaTextFormField(label: 'Senha'),
                      const SizedBox(
                        height: 30,
                      ),
                      const VakinhaTextFormField(label: 'Confirmar senha'),
                      const SizedBox(
                        height: 50,
                      ),
                      Center(
                        child: VakinhaButton(onPressed: () {}, label: 'Cadastrar', width: context.width,),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
