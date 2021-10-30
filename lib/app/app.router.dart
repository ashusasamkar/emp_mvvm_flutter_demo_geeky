// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import '../ui/emp_detail/emp_detail_view.dart';
import '../ui/emp_list/emp_list_view.dart';

class Routes {
  static const String employeeList = '/';
  static const String employeeDetail = '/employee-detail';
  static const all = <String>{
    employeeList,
    employeeDetail,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.employeeList, page: EmployeeList),
    RouteDef(Routes.employeeDetail, page: EmployeeDetail),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    EmployeeList: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => EmployeeList(),
        settings: data,
      );
    },
    EmployeeDetail: (data) {
      var args = data.getArgs<EmployeeDetailArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => EmployeeDetail(empdetails: args.empdetails),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// EmployeeDetail arguments holder class
class EmployeeDetailArguments {
  final dynamic empdetails;
  EmployeeDetailArguments({required this.empdetails});
}
