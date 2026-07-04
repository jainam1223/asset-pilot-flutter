import '../../../models/api_response/api_result.dart';
import '../api_repository/api_repository.dart';
import '../common/models/item_category_res_dm.dart';
import 'models/dropdown_option_res_dm.dart';

/// Repository for admin dropdown/filter data sources (item categories,
/// managers, employees) shared across several admin screens.
///
/// Singleton via a private constructor + [instance], per convention.
class DropdownRepository extends Repository {
  DropdownRepository._();

  static final DropdownRepository instance = DropdownRepository._();

  Future<ApiResult<List<ItemCategoryResDm>>> fetchItemCategories() {
    return apiService.fetchItemCategoryDropdown();
  }

  Future<ApiResult<List<DropdownOptionResDm>>> fetchManagers() {
    return apiService.fetchManagerDropdown();
  }

  Future<ApiResult<List<DropdownOptionResDm>>> fetchEmployees() {
    return apiService.fetchEmployeeDropdown();
  }
}
