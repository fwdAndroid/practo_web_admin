import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:practo_web_admin/widgets/text_form_field.dart';

class DoctorsFeed extends StatefulWidget {
  const DoctorsFeed({Key? key}) : super(key: key);

  @override
  State<DoctorsFeed> createState() => _DoctorsFeedState();
}

class _DoctorsFeedState extends State<DoctorsFeed> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: const Text(
                'Doctor Overview',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 330,
                    padding: const EdgeInsets.symmetric(
                      vertical: 5,
                    ),
                    child: TextFormInputField(
                        controller: controller,
                        hintText: "Search Doctor",
                        textInputType: TextInputType.text),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  elevation: 4,
                  child: SizedBox(
                    height: 110,
                    width: 310,
                    child: Center(
                      child: ListTile(
                        title: const Text(
                          '1149',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff393939),
                          ),
                        ),
                        subtitle: const Text(
                          'Active Doctors',
                          style: TextStyle(
                            fontSize: 13,
                            color: Color(0xff464646),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  elevation: 4,
                  child: SizedBox(
                    height: 110,
                    width: 310,
                    child: Center(
                      child: ListTile(
                        title: const Text(
                          '1149',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff393939),
                          ),
                        ),
                        subtitle: const Text(
                          'UnActive Doctors',
                          style: TextStyle(
                            fontSize: 13,
                            color: Color(0xff464646),
                          ),
                        ),
                        trailing: SizedBox(
                          height: 50,
                          width: 50,
                          child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage("assets/Subtract.png"))),
                              child: Center(
                                child: Text(
                                  "+35",
                                  textAlign: TextAlign.center,
                                ),
                              )),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 20),
              child: const Text(
                'Doctors Dashboard',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  elevation: 5,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: DataTable(
                      columns: [
                        DataColumn(
                            label: Text(
                          'Registered Doctors',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                        DataColumn(
                            label: Text(
                          'Doctors Email',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                        DataColumn(
                            label: Text(
                          'Doctors Ph',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                        DataColumn(
                            label: Text(
                          'Doctors Specilization',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                        DataColumn(
                            label: Text(
                          'Actions',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                      ],
                      rows: [
                        DataRow(cells: [
                          DataCell(Text('Dr. Mohammad Idrees')),
                          DataCell(Text('fwdkaleem@gmail.com')),
                          DataCell(Text('+9230706947243')),
                          DataCell(Text("Heart Surgean")),
                          DataCell(Row(
                            children: [
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Block",
                                    style: TextStyle(color: Colors.red),
                                  )),
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Unblock",
                                    style: TextStyle(color: Colors.green),
                                  ))
                            ],
                          ))
                        ]),
                        DataRow(cells: [
                          DataCell(Text('Dr. Mohammad Idrees')),
                          DataCell(Text('fwdkaleem@gmail.com')),
                          DataCell(Text('+9230706947243')),
                          DataCell(Text("Heart Surgean")),
                          DataCell(Row(
                            children: [
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Block",
                                    style: TextStyle(color: Colors.red),
                                  )),
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Unblock",
                                    style: TextStyle(color: Colors.green),
                                  ))
                            ],
                          ))
                        ]),
                        DataRow(cells: [
                          DataCell(Text('Dr. Mohammad Idrees')),
                          DataCell(Text('fwdkaleem@gmail.com')),
                          DataCell(Text('+9230706947243')),
                          DataCell(Text("Heart Surgean")),
                          DataCell(Row(
                            children: [
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Block",
                                    style: TextStyle(color: Colors.red),
                                  )),
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Unblock",
                                    style: TextStyle(color: Colors.green),
                                  ))
                            ],
                          ))
                        ]),
                        DataRow(cells: [
                          DataCell(Text('Dr. Mohammad Idrees')),
                          DataCell(Text('fwdkaleem@gmail.com')),
                          DataCell(Text('+9230706947243')),
                          DataCell(Text("Heart Surgean")),
                          DataCell(Row(
                            children: [
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Block",
                                    style: TextStyle(color: Colors.red),
                                  )),
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Unblock",
                                    style: TextStyle(color: Colors.green),
                                  ))
                            ],
                          ))
                        ]),
                        DataRow(cells: [
                          DataCell(Text('Dr. Mohammad Idrees')),
                          DataCell(Text('fwdkaleem@gmail.com')),
                          DataCell(Text('+9230706947243')),
                          DataCell(Text("Heart Surgean")),
                          DataCell(Row(
                            children: [
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Block",
                                    style: TextStyle(color: Colors.red),
                                  )),
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Unblock",
                                    style: TextStyle(color: Colors.green),
                                  ))
                            ],
                          ))
                        ]),
                        DataRow(cells: [
                          DataCell(Text('Dr. Mohammad Idrees')),
                          DataCell(Text('fwdkaleem@gmail.com')),
                          DataCell(Text('+9230706947243')),
                          DataCell(Text("Heart Surgean")),
                          DataCell(Row(
                            children: [
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Block",
                                    style: TextStyle(color: Colors.red),
                                  )),
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Unblock",
                                    style: TextStyle(color: Colors.green),
                                  ))
                            ],
                          ))
                        ]),
                        DataRow(cells: [
                          DataCell(Text('Dr. Mohammad Idrees')),
                          DataCell(Text('fwdkaleem@gmail.com')),
                          DataCell(Text('+9230706947243')),
                          DataCell(Text("Heart Surgean")),
                          DataCell(Row(
                            children: [
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Block",
                                    style: TextStyle(color: Colors.red),
                                  )),
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Unblock",
                                    style: TextStyle(color: Colors.green),
                                  ))
                            ],
                          ))
                        ]),
                        DataRow(cells: [
                          DataCell(Text('Dr. Mohammad Idrees')),
                          DataCell(Text('fwdkaleem@gmail.com')),
                          DataCell(Text('+9230706947243')),
                          DataCell(Text("Heart Surgean")),
                          DataCell(Row(
                            children: [
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Block",
                                    style: TextStyle(color: Colors.red),
                                  )),
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Unblock",
                                    style: TextStyle(color: Colors.green),
                                  ))
                            ],
                          ))
                        ]),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
