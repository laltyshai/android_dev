import 'package:material_ui/material_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RegistrationScreen extends ConsumerWidget{
  const RegistrationScreen({super.key});

  @override
  Widget build (BuildContext context, WidgetRef ref){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
          Text("Registration page"),
          TextField(
            controller:TextEditingController(),
            decoration: InputDecoration(
              hintText: "enter your email"
            ),
            // i do not know how to make controllers
          ),
           TextField(
            controller:TextEditingController(),
            decoration: InputDecoration(
              hintText: "entery your password"
            ),
            // i do not know how to make controllers
          )
      ]
    );
  }
}