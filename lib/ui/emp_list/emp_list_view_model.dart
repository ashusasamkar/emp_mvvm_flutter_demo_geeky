import 'package:geeky_works/app/app.locator.dart';
import 'package:geeky_works/app/app.router.dart';
import 'package:geeky_works/model/response/employee.dart';
import 'package:geeky_works/services/api.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class EmployeeViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _apiService = locator<Api>();

  Employee? employeeResponse;

  void toEmpDetails(Data empdetails) async {
    await _navigationService.navigateTo(Routes.employeeDetail,
        arguments: EmployeeDetailArguments(empdetails: empdetails));
  }

  callEmpApi() async {
    setBusy(true);
    var response = await _apiService.callGetApi('/exercises/employee.json');
    if (response['status'] == 'success') {
      employeeResponse = Employee.fromJson(response);
    } else {
      printError(info: 'callEmpApi() Api status Error::${response['status']}');
    }
    setBusy(false);
  }
}
