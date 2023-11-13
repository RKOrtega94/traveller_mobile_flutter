import 'package:traveller_mobile_flutter/infrastructure/models/banner.dart';

abstract class IBannerRepository {
  Future<List<BannerModel>> getBanners();
}
