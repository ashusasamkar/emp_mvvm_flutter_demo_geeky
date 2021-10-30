import 'package:geeky_works/services/api.dart';
import 'package:geeky_works/ui/emp_detail/emp_detail_view.dart';
import 'package:geeky_works/ui/emp_list/emp_list_view.dart';
import 'package:geeky_works/ui/emp_list/emp_list_view_model.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
    routes: [
  MaterialRoute(page: EmployeeList, initial: true),
  MaterialRoute(page: EmployeeDetail),
],
  dependencies:  [
    LazySingleton(classType: Api),
    LazySingleton(
      classType: NavigationService, environments: {Environment.dev}),
    Singleton(classType: EmployeeViewModel),
  ],
)
class AppSetup {}
