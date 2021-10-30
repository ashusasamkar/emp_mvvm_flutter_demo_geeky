import 'dart:ui';

import 'package:flutter/material.dart';

class EmployeeDetail extends StatelessWidget {
  var empdetails;
  EmployeeDetail({required this.empdetails});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Employee Profile')),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        //  padding: EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Card(
              color: Theme.of(context).scaffoldBackgroundColor,
              shadowColor: Colors.black,
              elevation: 10.0,
              semanticContainer: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: ListTile(
                  title: CircleAvatar(
                    radius: 40,
                    child: Text(empdetails.employeeName![0]),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      '${empdetails.employeeName}',
                      style: Theme.of(context).textTheme.headline3!.merge(
                            const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                color: Colors.white),
                          ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  'Account Info',
                  style: Theme.of(context).textTheme.bodyText2!.merge(
                        const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                ),
              ),
            ),
            const Divider(
              color: Colors.grey,
            ),
            ListTile(
              leading: const Icon(
                Icons.badge,
                color: Colors.grey,
                size: 30,
              ),
              title: Text(
                'Employee ID',
                style: Theme.of(context).textTheme.headline3!,
              ),
              subtitle: Text('${empdetails.id}',
                  style: Theme.of(context).textTheme.bodyText2!),
            ),
            ListTile(
              leading: const Icon(
                Icons.home,
                color: Colors.grey,
                size: 30,
              ),
              title: Text(
                'Department',
                style: Theme.of(context).textTheme.headline3!,
              ),
              subtitle: Text('${empdetails.dept}',
                  style: Theme.of(context).textTheme.bodyText2!),
            ),
            ListTile(
              leading: const Icon(
                Icons.cake_rounded,
                color: Colors.grey,
                size: 30,
              ),
              title: Text(
                'Date Of Birth',
                style: Theme.of(context).textTheme.headline3!,
              ),
              subtitle: Text('${empdetails.dob}',
                  style: Theme.of(context).textTheme.bodyText2!),
            ),
            ListTile(
              leading: const Icon(
                Icons.work_rounded,
                color: Colors.grey,
                size: 30,
              ),
              title: Text(
                'Date Of Joining',
                style: Theme.of(context).textTheme.headline3!,
              ),
              subtitle: Text('${empdetails.doj}',
                  style: Theme.of(context).textTheme.bodyText2!),
            ),
          ],
        ),
      ),
    );
  }
}
