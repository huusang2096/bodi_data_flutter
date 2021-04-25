import 'package:bodidatacms/common/base_cubit.dart';
import 'package:bodidatacms/model/inventory/category.dart';
import 'package:bodidatacms/model/inventory/sttyle_model.dart';
import 'package:bodidatacms/model/pagination/pagination.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'inventory_state.dart';
part 'inventory_cubit.freezed.dart';

class InventoryCubit extends BaseCubit<InventoryState> {
  InventoryCubit() : super(Initial(DataInventory()));

  @override
  void initData() {
    getListCategories();
    getStyles();
    super.initData();
  }

  void getStyles() async {
    try {
      emit(Loading(state.data.copyWith(isLoading: true)));

      //key search
      String categoriesSearchText = getCategoriesSearchText();
      final List<String>? brandKeysSearch = appPref.brandKeysSearch;
      final String brandSeach =
          brandKeysSearch == null ? '' : brandKeysSearch.join(',');

      final String limitSearch =
          state.data.limit == 'all' ? '-1' : state.data.limit;
      final String page =
          state.data.limit == 'all' ? '1' : state.data.currentPage;

      final stylesResponse = await dataRepository.getStyles(
        limitSearch,
        page,
        categoriesSearchText,
        brandSeach,
        state.data.keySearch,
      );
      final styles = stylesResponse.data ?? [];

      getListPage(stylesResponse.pagination!);

      final checkResultSearching = getCheckResultSearching(categoriesSearchText,
          brandKeysSearch, state.data.keySearch, styles.length);

      emit(Loaded(state.data.copyWith(
          isLoading: false,
          styles: styles,
          checkResultSearching: checkResultSearching)));
    } catch (e) {
      handleAppError(e);
      logger.e(e);
    }
  }

  void getListCategories() async {
    final categoriesModal = await dataRepository.getCategories();
    final categories = categoriesModal.data ?? [];
    emit(Loaded(state.data.copyWith(listCategories: categories)));
  }

  bool getCheckResultSearching(String categoriesSearchText,
      List<String>? brandKeysSearch, String keySearch, int lengthResult) {
    if (((brandKeysSearch != null && brandKeysSearch.length > 0) ||
            categoriesSearchText.isNotEmpty ||
            keySearch.isNotEmpty) &&
        lengthResult == 0) {
      return true;
    }
    return false;
  }

  String getCategoriesSearchText() {
    String categoriesSearchText = '';
    state.data.listCategories.forEach((element) {
      if (element.isSelected) {
        categoriesSearchText += (element.name ?? '') + ",";
      }
    });
    return categoriesSearchText;
  }

  void getListPage(Pagination pagination) {
    List<String> listPage = [];
    for (int i = 1; i <= pagination.totalPage!; i++) {
      listPage.add(i.toString());
    }
    emit(Loaded(state.data.copyWith(listPages: listPage)));
  }

  void changeLimit(String limit) {
    emit(Loaded(state.data.copyWith(limit: limit, currentPage: "1")));
    getStyles();
  }

  void changePage(String currentPage) {
    emit(Loaded(state.data.copyWith(currentPage: currentPage)));
    getStyles();
  }

  void addBrandKeys(String value) {
    final List<String> listKeys = appPref.brandKeysSearch ?? [];
    listKeys.add(value);
    appPref.setBrandKeysSearch(listKeys);
    getStyles();
  }

  void deleteBrandKey(String value) {
    final List<String> listKeys = appPref.brandKeysSearch ?? [];
    listKeys.removeAt(listKeys.indexWhere((element) => element == value));
    appPref.setBrandKeysSearch(listKeys);
    getStyles();
  }

  void changeKeySearch(String value) {
    emit(Loaded(state.data.copyWith(keySearch: value)));
    getStyles();
  }
}
