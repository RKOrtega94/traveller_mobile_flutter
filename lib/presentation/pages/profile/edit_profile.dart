import 'package:flutter/material.dart';
import 'package:traveller_mobile_flutter/presentation/layouts/page_layout.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const PageLayout(
      title: "Editar perfil",
      child: SingleChildScrollView(),
    );
  }
}
