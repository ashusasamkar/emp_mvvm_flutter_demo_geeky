import 'package:flutter/material.dart';
import 'package:geeky_works/model/response/employee.dart';
import 'package:geeky_works/ui/emp_list/emp_list_view_model.dart';
import 'package:stacked/stacked.dart';

class EmployeeList extends StatelessWidget {
  List<Data> employeeList = [];

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<EmployeeViewModel>.reactive(
      onModelReady: (viewModel) {
        viewModel.callEmpApi();
      },
      builder: (context, viewModel, child) => viewModel.isBusy
          ? const Center(child: CircularProgressIndicator())
          : Scaffold(
              appBar: AppBar(title: const Text('Employee List')),
              body: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListView.builder(
                  itemCount: viewModel.employeeResponse!.data!.length,
                  itemBuilder: (BuildContext context, int index) {
                    employeeList = viewModel.employeeResponse!.data!;

                    return Card(
                      color: Theme.of(context).scaffoldBackgroundColor,
                      shadowColor: Colors.black,
                      elevation: 10.0,
                      semanticContainer: true,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      margin: const EdgeInsets.all(8),
                      child: ListTile(
                        isThreeLine: true,
                        leading: CircleAvatar(
                            child: Text(employeeList[index].employeeName![0])),
                        title: Text('${employeeList[index].employeeName}',
                            style: Theme.of(context).textTheme.headline3),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Department: ${employeeList[index].dept}',
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                            Text(
                              'ID: ${employeeList[index].id}',
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                          ],
                        ),
                        trailing: IconButton(
                          icon: const Icon(
                            Icons.remove_red_eye_sharp,
                            color: Colors.grey,
                          ),
                          onPressed: () {
                            viewModel.toEmpDetails(employeeList[index]);
                          },
                        ),
                        onTap: () {
                          viewModel.toEmpDetails(employeeList[index]);
                        },
                      ),
                    );
                  },
                ),
              ),
            ),
      viewModelBuilder: () => EmployeeViewModel(),
    );
  }
}
