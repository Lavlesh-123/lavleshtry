import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateCaseController extends GetxController {
  final TextEditingController messageController = TextEditingController();
  RxBool isSecondFileAttachmentVisible = false.obs;
  RxBool isThirdFileAttachmentVisible = false.obs;
  RxBool isFourthFileAttachmentVisible = false.obs;

  String? selectedOption1 = 'Profile';
  String? selectedOption2 = 'I want to change/Update in profile';

  Map<String, List<String>> dropdownOptions = {
    'Profile': [
      'I want to change/Update in profile',
      'I want to change/Update my contact details',
      'I am facing issues in Kyc verification',
      'Not able to upload Doc.for verification'
    ],
    'Account': [
      'Not able to Add Bank Account',
      'I want to Deactivate my Account',
    ],
    'Transaction': [
      'My transaction has failed',
      'My transaction is pending',
      'I am facing issues with my orders ',
      'My deposit has not arrived in my wallet'
    ],
    'Withdrawal': [
      'I am not able to withdraw '
          'payment from my wallet',
      'My withdrawal hasn\'t '
          'arrived in my bank account',
    ],
    'Refund': ['I want refund for a order', 'I want refund of my Deposits'],
    'Security': [
      'My account is restricted',
      'I would like to dispute a transaction',
      'I would like to report a spam'
    ]
  };
}
