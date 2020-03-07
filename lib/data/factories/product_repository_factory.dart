import 'package:ecom/config/app_settings.dart';
import 'package:ecom/data/cache/ProductCacheRepository.dart';
import 'package:ecom/data/local/product_local_repository.dart';
import 'package:ecom/data/remote/product_remote_repository.dart';
import 'package:ecom/domain/repositories/ProductRepository.dart';

class ProductRepositoryFactory {
  final AppSettings appSettings;

  ProductRepositoryFactory(this.appSettings);

  ProductRepository create() {
    if (appSettings.cacheIsEnabled) {
      return ProductCacheRepository(
        ProductLocalRepository(),
        ProductRemoteRepository(),
      );
    }

    //TODO in this point the app should be call an interface to detected if the device has internet
    var hasInternet = false;
    if (hasInternet) {
      return ProductRemoteRepository();
    }

    return ProductLocalRepository();
  }
}