import 'package:flutter/material.dart';
import 'package:traveller_mobile_flutter/core/constants/app_constants.dart';
import 'package:traveller_mobile_flutter/presentation/layouts/page_layout.dart';
import 'package:traveller_mobile_flutter/presentation/pages/profile/edit_profile.dart';
import 'package:traveller_mobile_flutter/presentation/views/avatar.dart';
import 'package:traveller_mobile_flutter/presentation/widgets/buttom_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PageLayout(
      title: "Perfil",
      actions: const [
        /* ThemeSwitch(), */
      ],
      child: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const AvatarComponent(),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    AppButton(
                      "Editar perfil",
                      icon: Image.asset(
                        "$BASE_ICON_PATH/user.png",
                        width: 20,
                      ),
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const EditProfileScreen(),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    AppButton(
                      "Cambiar contraseña",
                      icon: Image.asset(
                        "$BASE_ICON_PATH/password.png",
                        width: 20,
                      ),
                      onPressed: () {},
                    ),
                    const SizedBox(height: 10),
                    AppButton(
                      "Cerrar sesión",
                      icon: Image.asset(
                        "$BASE_ICON_PATH/logout.png",
                        width: 20,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
