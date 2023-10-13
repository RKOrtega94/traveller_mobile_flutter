import 'package:flutter/material.dart';
import 'package:traveller_mobile_flutter/core/constants.dart';

import 'package:traveller_mobile_flutter/presentation/widgets/avatar.dart';
import 'package:traveller_mobile_flutter/presentation/widgets/button.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const AppAvatar(),
            const SizedBox(height: 50),
            AppButton(
              label: "Editar perfil",
              icon: Image.asset("$baseIconPath/user.png", width: 20),
            ),
            const SizedBox(height: 10),
            AppButton(
              label: "Cambiar contraseña",
              icon: Image.asset("$baseIconPath/password.png", width: 20),
            ),
            const SizedBox(height: 10),
            AppButton(
              label: "Cerrar sesión",
              icon: Image.asset("$baseIconPath/logout.png", width: 20),
            ),
          ],
        ),
      ),
    );
  }
}
