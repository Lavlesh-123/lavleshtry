import 'package:flutter/material.dart';
import 'package:getx_tutorial/screens/create_controller.dart';

class CreateCase extends StatelessWidget {
  CreateCase({Key? key}) : super(key: key);
  final CreateCaseController controller = CreateCaseController();

  // final TextEditingController messageController = TextEditingController();
  // bool isSecondFileAttachmentVisible = false;
  // bool isThirdFileAttachmentVisible = false;
  // bool isFourthFileAttachmentVisible = false;
  //
  //
  //
  // String? selectedOption1 = 'Profile';
  // String? selectedOption2 = 'I want to change/Update in profile';
  //
  //
  // Map<String, List<String>> dropdownOptions = {
  //   'Profile': [
  //     'I want to change/Update in profile',
  //     'I want to change/Update my contact details',
  //     'I am facing issues in Kyc verification',
  //     'Not able to upload Doc.for verification'
  //   ],
  //   'Account': [
  //     'Not able to Add Bank Account',
  //     'I want to Deactivate my Account',
  //   ],
  //   'Transaction': [
  //     'My transaction has failed',
  //     'My transaction is pending',
  //     'I am facing issues with my orders ',
  //     'My deposit has not arrived in my wallet'
  //   ],
  //   'Withdrawal': [
  //     'I am not able to withdraw '
  //         'payment from my wallet',
  //     'My withdrawal hasn\'t '
  //         'arrived in my bank account',
  //   ],
  //   'Refund': ['I want refund for a order', 'I want refund of my Deposits'],
  //   'Security': [
  //     'My account is restricted',
  //     'I would like to dispute a transaction',
  //     'I would like to report a spam'
  //   ]
  // };

  List<DropdownMenuItem<String>> getDropdownItems(List<String> options) {
    return options.map((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: SizedBox(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              value,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          ),
        ),
      );
    }).toList();
  }

  // void chooseApp(){
  //   showDialog(context: context, builder: (context){
  //     return const DialogBox();
  //
  //   });
  //
  // }
  @override
  Widget build(BuildContext context) {
    List<String> optionsForDropdown2 =
        controller.dropdownOptions[controller.selectedOption1] ?? [];

    final mediaQuery = MediaQuery.of(context);
    final height = mediaQuery.size.height;
    final width = mediaQuery.size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Create Case',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: width * 0.9, // Adjust the width as needed
              decoration: BoxDecoration(
                border: Border.all(), // Add a border to the container
              ),
              child: DropdownButton<String>(
                isExpanded: true,
                // Allows the dropdown to expand horizontally
                value: controller.selectedOption1,
                onChanged: (newValue) {

                    controller.selectedOption1 = newValue;
                    //Update the options for the second dropdown
                    optionsForDropdown2 = controller
                            .dropdownOptions[controller.selectedOption1] ??
                        [];
                    //Reset the selected value of the second dropdown
                    controller.selectedOption2 = optionsForDropdown2.isNotEmpty
                        ? optionsForDropdown2.first
                        : '';

                },
                items: controller.dropdownOptions.keys
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: SizedBox(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          value,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.003,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: width * 0.9,
              //height: height * 0.1, // Adjust the width as needed
              decoration: BoxDecoration(
                border: Border.all(), // Add a border to the container
              ),
              child: DropdownButton<String>(
                  isExpanded: true,
                  value: controller.selectedOption2,
                  onChanged: (newValue) {
                    controller.selectedOption2 = newValue!;
                  },
                  items: getDropdownItems(optionsForDropdown2)),
            ),
          ),
          //SizedBox(height: height * 0.002,),

          SizedBox(
            height: height * 0.003,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextFormField(
              controller: controller.messageController,
              maxLines: 3,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Type your message here'),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Text(
                  'Attach File(s)',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Colors.grey.shade600),
                ),
              ),
            ],
          ),
          SizedBox(
            height: height * 0.09,
          ),
          // WCustomButton(
          //     text: 'Send',
          //     onPressed: () {
          //       Navigator.push(
          //           context,
          //           MaterialPageRoute(
          //               builder: (context) => CategoryScreen(
          //                 category: selectedOption1.toString(),
          //               )));
          //     })
        ]),
      ),
    );
  }
}
