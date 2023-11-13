import 'package:traveller_mobile_flutter/infrastructure/models/banner.dart';
import 'package:traveller_mobile_flutter/infrastructure/repositories/banner_repository.dart';

class GetAllBannersUseCase {
  final BannerRepository _bannerRepository;

  GetAllBannersUseCase(this._bannerRepository);

  Future<List<BannerModel>> call() async {
    return await _bannerRepository.getBanners();
  }
}
