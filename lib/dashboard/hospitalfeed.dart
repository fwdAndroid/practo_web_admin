import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:practo_web_admin/widgets/text_form_field.dart';

class HospitalFeed extends StatefulWidget {
  const HospitalFeed({Key? key}) : super(key: key);

  @override
  State<HospitalFeed> createState() => _HospitalFeedState();
}

enum BestTutorSite { javatpoint, w3schools, tutorialandexample }

class _HospitalFeedState extends State<HospitalFeed> {
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
                      hintText: "Search Hospital By Name",
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
                          'Active Hospitals',
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
                          'InActive Hospitals',
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
                                  "-35",
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
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.only(left: 20),
            child: const Text(
              'HospitalFeed',
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
                              'Hospital Name',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                            DataColumn(
                                label: Text(
                              'Address',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                            DataColumn(
                                label: Text(
                              'Ph Number',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                            DataColumn(
                                label: Text(
                              'Email',
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
                              DataCell(Text('DHQ Multan')),
                              DataCell(Text('235 B Eden Garden')),
                              DataCell(Text('+92305824234')),
                              DataCell(Text('fwdkaleem@gmail.com')),
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
                              // DataCell(Text('21-21-2022')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('DHQ Multan')),
                              DataCell(Text('235 B Eden Garden')),
                              DataCell(Text('+92305824234')),
                              DataCell(Text('fwdkaleem@gmail.com')),
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
                              // DataCell(Text('21-21-2022')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('DHQ Multan')),
                              DataCell(Text('235 B Eden Garden')),
                              DataCell(Text('+92305824234')),
                              DataCell(Text('fwdkaleem@gmail.com')),
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
                              // DataCell(Text('21-21-2022')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('DHQ Multan')),
                              DataCell(Text('235 B Eden Garden')),
                              DataCell(Text('+92305824234')),
                              DataCell(Text('fwdkaleem@gmail.com')),
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
                              // DataCell(Text('21-21-2022')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('DHQ Multan')),
                              DataCell(Text('235 B Eden Garden')),
                              DataCell(Text('+92305824234')),
                              DataCell(Text('fwdkaleem@gmail.com')),
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
                              // DataCell(Text('21-21-2022')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('DHQ Multan')),
                              DataCell(Text('235 B Eden Garden')),
                              DataCell(Text('+92305824234')),
                              DataCell(Text('fwdkaleem@gmail.com')),
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
                              // DataCell(Text('21-21-2022')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('DHQ Multan')),
                              DataCell(Text('235 B Eden Garden')),
                              DataCell(Text('+92305824234')),
                              DataCell(Text('fwdkaleem@gmail.com')),
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
                              // DataCell(Text('21-21-2022')),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('DHQ Multan')),
                              DataCell(Text('235 B Eden Garden')),
                              DataCell(Text('+92305824234')),
                              DataCell(Text('fwdkaleem@gmail.com')),
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
                              // DataCell(Text('21-21-2022')),
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
      )),
    );
  }
}
