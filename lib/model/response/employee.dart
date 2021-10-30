class Employee {
  String? status;
  List<Data>? data;

  Employee({this.status,  this.data});

  Employee.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['data'] != null) {
      data =  <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? id;
  String? employeeName;
  String? dob;
  String? doj;
  String? dept;

  Data({this.id, this.employeeName, this.dob, this.doj, this.dept});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    employeeName = json['employee_name'];
    dob = json['dob'];
    doj = json['doj'];
    dept = json['dept'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['employee_name'] = this.employeeName;
    data['dob'] = this.dob;
    data['doj'] = this.doj;
    data['dept'] = this.dept;
    return data;
  }
}