import 'package:flutter/material.dart';
import 'package:practo_web_admin/widgets/text_form_field.dart';

class PaymetManager extends StatefulWidget {
  const PaymetManager({Key? key}) : super(key: key);

  @override
  State<PaymetManager> createState() => _PaymetManagerState();
}

class _PaymetManagerState extends State<PaymetManager> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: SizedBox(
                    width: 330,
                    height: 270,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //Age
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              margin: EdgeInsets.only(left: 20),
                              child: const Text(
                                'Doctor Payment',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Container(
                              margin: EdgeInsets.only(left: 20),
                              child: const Text(
                                'Amount',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: TextFormInputField(
                              controller: controller,
                              hintText: "Price",
                              textInputType: TextInputType.number,
                            ),
                          ),

                          Center(
                              child: ElevatedButton(
                                  onPressed: () {}, child: Text("Pay")))
                        ]),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: SizedBox(
                    width: 330,
                    height: 270,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //Age
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              margin: EdgeInsets.only(left: 20),
                              child: const Text(
                                'Hospital Payment',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Container(
                              margin: EdgeInsets.only(left: 20),
                              child: const Text(
                                'Amount',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: TextFormInputField(
                              controller: controller,
                              hintText: "Price",
                              textInputType: TextInputType.number,
                            ),
                          ),

                          Center(
                              child: ElevatedButton(
                                  onPressed: () {}, child: Text("Pay")))
                        ]),
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
