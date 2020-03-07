import 'package:ecom/domain/usecases/base_use_case.dart';
import 'package:ecom/domain/usecases/products/products_by_filter_params.dart';
import 'package:ecom/domain/usecases/products/products_by_filter_result.dart';

abstract class FindProductsByFilterUseCase
    implements BaseUseCase<ProductsByFilterResult, ProductsByFilterParams> {}