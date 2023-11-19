import 'package:traveller_mobile_flutter/data/models/banner.dart';

abstract class IBannerRepository {
  Future<List<BannerModel>> getBanners();
}
