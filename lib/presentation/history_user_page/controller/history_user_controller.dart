import 'package:clean_city/core/app_export.dart';
import 'package:clean_city/presentation/history_user_page/models/history_user_model.dart';

class HistoryUserController extends GetxController {
  HistoryUserController(this.historyUserModelObj);

  Rx<HistoryUserModel> historyUserModelObj;

  SelectionPopupModel? selectedDropDownValue;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  onSelected(dynamic value) {
    selectedDropDownValue = value as SelectionPopupModel;
    historyUserModelObj.value.dropdownItemList.value.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    historyUserModelObj.value.dropdownItemList.refresh();
  }
}
