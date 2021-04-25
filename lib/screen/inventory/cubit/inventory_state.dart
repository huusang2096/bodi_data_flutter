part of 'inventory_cubit.dart';

@freezed
class InventoryStateData with _$InventoryStateData {
  const factory InventoryStateData({
    @Default(false) bool isLoading,
    @Default(false) bool checkResultSearching,
    @Default("5") String limit,
    @Default("1") String currentPage,
    @Default("") String keySearch,
    @Default([]) List<Style> styles,
    @Default([]) List<String> listPages,
    @Default([]) List<Category> listCategories,
  }) = DataInventory;
}

@freezed
class InventoryState with _$InventoryState {
  const factory InventoryState.init(DataInventory data) = Initial;
  const factory InventoryState.loaded(DataInventory data) = Loaded;
  const factory InventoryState.loading(DataInventory data) = Loading;
  const factory InventoryState.error(DataInventory data) = Error;
}
