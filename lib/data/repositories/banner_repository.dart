import 'package:traveller_mobile_flutter/domain/data_source/banner_data_source.dart';
import 'package:traveller_mobile_flutter/domain/repositories/banner_repository.dart';
import 'package:traveller_mobile_flutter/data/models/banner.dart';

class BannerRepository extends IBannerRepository {
  final IBannerDataSource dataSource;

  BannerRepository(this.dataSource);
  @override
  Future<List<BannerModel>> getBanners() {
    try {
      return dataSource.getBanners().then(
            (value) => value
                .map(
                  (e) => BannerModel.fromJson(e),
                )
                .toList(),
          );
    } catch (e) {
      rethrow;
    }
  }
}
