class DropdownSubCategorieModel {
  List<SubCategorie> listSub;
  int isSelected;
  bool isDisable;
  DropdownSubCategorieModel(
      {required this.listSub,
      required this.isSelected,
      required this.isDisable});
}

class SubCategorie {
  int id;
  String name;
  SubCategorie({required this.id, required this.name});
}
