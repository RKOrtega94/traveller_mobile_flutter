import 'package:traveller_mobile_flutter/domain/data_source/banner_data_source.dart';
import 'package:traveller_mobile_flutter/infrastructure/static/banners.dart';

class BannerLocalDataSource extends IBannerDataSource {
  List<Map<String, dynamic>> bannerData = banners;

  @override
  Future<List<Map<String, dynamic>>> getBanners() async {
    await Future.delayed(const Duration(seconds: 2));

    return Future.value(bannerData);
  }
}
