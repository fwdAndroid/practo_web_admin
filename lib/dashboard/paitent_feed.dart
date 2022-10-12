import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:practo_web_admin/widgets/text_form_field.dart';

class PaitientFeed extends StatefulWidget {
  const PaitientFeed({Key? key}) : super(key: key);

  @override
  State<PaitientFeed> createState() => _PaitientFeedState();
}

enum BestTutorSite { javatpoint, w3schools, tutorialandexample }

class _PaitientFeedState extends State<PaitientFeed> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    BestTutorSite _site = BestTutorSite.javatpoint;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: const Text(
                'Overview',
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
                        hintText: "Search by Paitient",
                        textInputType: TextInputType.text),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
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
                            'Active Paitient',
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
                            'Blocked Paitient',
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
                            '149',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff393939),
                            ),
                          ),
                          subtitle: const Text(
                            'New Paitient',
                            style: TextStyle(
                              fontSize: 13,
                              color: Color(0xff464646),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: const Text(
                'Paitient Feed',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: SizedBox(
                    width: 1000,
                    height: 670,
                    child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          DataTable(
                            columns: [
                              DataColumn(
                                  label: Text(
                                'Paitient Name',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              )),
                              DataColumn(
                                  label: Text(
                                'Gender',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              )),
                              DataColumn(
                                  label: Text(
                                'Phone Number',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              )),
                              DataColumn(
                                  label: Text(
                                'E-Mail',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              )),
                              DataColumn(
                                  label: Text(
                                'Birthdate',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              )),
                              DataColumn(
                                  label: Text(
                                'Action',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              )),
                            ],
                            rows: [
                              DataRow(cells: [
                                DataCell(Text('Fawad Kaleem')),
                                DataCell(Text('Male')),
                                DataCell(Text('+923070684743')),
                                DataCell(Text('abc@gmail.com')),
                                DataCell(Text('21.12.1990')),
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
                                DataCell(Text('Fawad Kaleem')),
                                DataCell(Text('Male')),
                                DataCell(Text('+923070684743')),
                                DataCell(Text('abc@gmail.com')),
                                DataCell(Text('21.12.1990')),
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
                                DataCell(Text('Fawad Kaleem')),
                                DataCell(Text('Male')),
                                DataCell(Text('+923070684743')),
                                DataCell(Text('abc@gmail.com')),
                                DataCell(Text('21.12.1990')),
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
                                DataCell(Text('Fawad Kaleem')),
                                DataCell(Text('Male')),
                                DataCell(Text('+923070684743')),
                                DataCell(Text('abc@gmail.com')),
                                DataCell(Text('21.12.1990')),
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
                                DataCell(Text('Fawad Kaleem')),
                                DataCell(Text('Male')),
                                DataCell(Text('+923070684743')),
                                DataCell(Text('abc@gmail.com')),
                                DataCell(Text('21.12.1990')),
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
                                DataCell(Text('Fawad Kaleem')),
                                DataCell(Text('Male')),
                                DataCell(Text('+923070684743')),
                                DataCell(Text('abc@gmail.com')),
                                DataCell(Text('21.12.1990')),
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
                                DataCell(Text('Fawad Kaleem')),
                                DataCell(Text('Male')),
                                DataCell(Text('+923070684743')),
                                DataCell(Text('abc@gmail.com')),
                                DataCell(Text('21.12.1990')),
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
                                DataCell(Text('Fawad Kaleem')),
                                DataCell(Text('Male')),
                                DataCell(Text('+923070684743')),
                                DataCell(Text('abc@gmail.com')),
                                DataCell(Text('21.12.1990')),
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
                                )),
                              ]),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
