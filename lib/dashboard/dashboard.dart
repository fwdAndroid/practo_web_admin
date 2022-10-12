import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:practo_web_admin/widgets/text_form_field.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'Statistics',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Card(
                      child: SizedBox(
                        height: 110,
                        width: 265,
                        child: Center(
                          child: ListTile(
                            title: const Text(
                              'Total Doctors',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff393939),
                              ),
                            ),
                            subtitle: const Text(
                              ' 112',
                              style: TextStyle(
                                fontSize: 13,
                                color: Color(0xff464646),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Card(
                      child: SizedBox(
                        height: 110,
                        width: 265,
                        child: Center(
                          child: ListTile(
                            title: const Text(
                              'Total Hospitals',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff393939),
                              ),
                            ),
                            subtitle: const Text(
                              '22',
                              style: TextStyle(
                                fontSize: 13,
                                color: Color(0xff464646),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Card(
                      child: SizedBox(
                        height: 110,
                        width: 265,
                        child: Center(
                          child: ListTile(
                            title: const Text(
                              'Total Paitents',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff393939),
                              ),
                            ),
                            subtitle: const Text(
                              '400',
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
                const SizedBox(
                  height: 40,
                ),
                Text(
                  "Dashboard",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Card(
                          elevation: 5,
                          child: Container(
                            width: 600,
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
                                  'Registered Hospitals',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )),
                                DataColumn(
                                    label: Text(
                                  'Registered Paitients',
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
                                  DataCell(Text('Allied Hospital')),
                                  DataCell(Text('Fawad Kaleem')),
                                ]),
                                DataRow(cells: [
                                  DataCell(Text('Dr. Mohammad Idrees')),
                                  DataCell(Text('Allied Hospital')),
                                  DataCell(Text('Fawad Kaleem')),
                                ]),
                                DataRow(cells: [
                                  DataCell(Text('Dr. Mohammad Idrees')),
                                  DataCell(Text('Allied Hospital')),
                                  DataCell(Text('Fawad Kaleem')),
                                ]),
                                DataRow(cells: [
                                  DataCell(Text('Dr. Mohammad Idrees')),
                                  DataCell(Text('Allied Hospital')),
                                  DataCell(Text('Fawad Kaleem')),
                                ]),
                                DataRow(cells: [
                                  DataCell(Text('Dr. Mohammad Idrees')),
                                  DataCell(Text('Allied Hospital')),
                                  DataCell(Text('Fawad Kaleem')),
                                ]),
                                DataRow(cells: [
                                  DataCell(Text('Dr. Mohammad Idrees')),
                                  DataCell(Text('Allied Hospital')),
                                  DataCell(Text('Fawad Kaleem')),
                                ]),
                                DataRow(cells: [
                                  DataCell(Text('Dr. Mohammad Idrees')),
                                  DataCell(Text('Allied Hospital')),
                                  DataCell(Text('Fawad Kaleem')),
                                ]),
                                DataRow(cells: [
                                  DataCell(Text('Dr. Mohammad Idrees')),
                                  DataCell(Text('Allied Hospital')),
                                  DataCell(Text('Fawad Kaleem')),
                                ]),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 130,
                        ),
                        Image.asset(
                          "assets/splash.png",
                          width: 300,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
