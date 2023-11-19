import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:traveller_mobile_flutter/data/data_source/local_data_source/banner_data_source.dart';
import 'package:traveller_mobile_flutter/data/models/banner.dart';
import 'package:traveller_mobile_flutter/data/repositories/banner_repository.dart';
import 'package:traveller_mobile_flutter/data/use_cases/banner/get_all_use_case.dart';

part 'banner_provider.g.dart';

@riverpod
Future<List<BannerModel>> banners(BannersRef ref) async {
  final GetAllBannersUseCase getAll = GetAllBannersUseCase(
    BannerRepository(
      BannerLocalDataSource(),
    ),
  );

  return await getAll.call();
}
