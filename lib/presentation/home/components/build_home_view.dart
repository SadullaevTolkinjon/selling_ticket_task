import 'package:flutter/material.dart';

import '../../favorite/favorite_page.dart';
import '../../profile/profile_page.dart';
import '../home_view.dart';

buildHomeUi(int index) {
  switch (index) {
    case 0:
      return const HomeView();
    case 1:
      return const FavoritePapge();
    case 2:
      return const ProfilePage();
    default:
      return const SizedBox();
  }
}
