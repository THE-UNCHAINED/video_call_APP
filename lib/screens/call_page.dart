import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

class CallPage extends StatelessWidget {

  final String userName;
  final String callID;
  final String userID;
   const CallPage({Key? key, required this.userName, required this.callID, required this.userID,}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
      appID:468125179,
      appSign: "38d77077ed0b360608019c59e1543d76c5d3ce035bc668ad1dfad13671c483ef",
      userID: userID,
      userName: userName,
      callID: callID,
      config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall(),
    );
  }
}