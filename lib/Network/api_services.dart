import 'dart:io';

import 'package:dio/dio.dart' as DIO;
import 'package:flutter/cupertino.dart';

class ApiServices {
  Future getRequest(String apiUrl) async {
    try {
      var dio = DIO.Dio();
      var responce = await dio
          .get(apiUrl)
          .whenComplete(() => debugPrint('SuccessFull'))
          .catchError((onError) {
        debugPrint(onError);
      });
      print(responce);
      return responce;
    } catch (e) {
      if (e is SocketException) {
        debugPrint("No internet connection!");
      }
    }
  }
}
