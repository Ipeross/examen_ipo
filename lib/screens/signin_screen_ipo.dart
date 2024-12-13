import 'package:fl_components/screens/home_screen_ipo.dart';
import 'package:fl_components/screens/list_view_screen_ipo.dart';
import 'package:fl_components/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myFormKey = GlobalKey<FormState>();

    //bool _checkEnabled = true;
    final ValueNotifier<bool> _checkEnabled = ValueNotifier<bool>(true);

    final Map<String, String> formValues = {
      'nombre': 'Andres',
      'apellido': 'Iniesta',
      'email': 'iniesta@gmail.com',
      'password': '123456',
      'role': 'usuario'
    };

    return Scaffold(
        body: SingleChildScrollView(
      child: Column(children: [
        Form(
          key: myFormKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              SizedBox(height: 30),
              const FlutterLogo(size: 150),
              CustomTextFormField(
                hintText: 'Usuario',
                labelText: 'Nombre del usuario',
                helperText: 'Solo letras',
                icon: Icons.verified_outlined,
                suffixIcon: Icons.person_2_rounded,
                obscureText: false,
                formProperty: 'nombre',
                formValues: formValues,
              ),
              SizedBox(height: 30),
              CustomTextFormField(
                hintText: 'Contraseña',
                labelText: 'Contraseña del usuario',
                icon: Icons.password_rounded,
                obscureText: true,
                formProperty: 'password',
                formValues: formValues,
              ),
            ],
          ),
        ),
        SizedBox(height: 50),
        ElevatedButton(
            onPressed: () {
              FocusScope.of(context).requestFocus(FocusNode());
              if (!myFormKey.currentState!.validate()) {
                print('Fomulario no valido');
                return;
              }
              final route = MaterialPageRoute(
                  builder: (context) => const ListViewScreen());
              Navigator.push(context, route);
            },
            child: const SizedBox(
                width: double.infinity, child: Center(child: Text('Enviar')))),
        SizedBox(height: 200),
        FloatingActionButton(
            child: const Icon(Icons.close),
            onPressed: () {
              final route =
                  MaterialPageRoute(builder: (context) => const HomeScreen());
              Navigator.push(context, route);
            })
      ]),
    ));
  }
}
