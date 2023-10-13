import 'package:flutter/material.dart';
import 'package:traveller_mobile_flutter/presentation/layouts/page_layout.dart';
import 'package:traveller_mobile_flutter/presentation/views/profile_view.dart';
import 'package:traveller_mobile_flutter/presentation/widgets/toggle_theme.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppPageLayout(
      actions: [AppToggleTheme()],
      child: ProfileView(),
    );
  }
}
