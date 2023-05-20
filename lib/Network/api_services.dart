import 'dart:io';

import 'package:dio/dio.dart' as DIO;
import 'package:flutter/cupertino.dart';

class ApiServices {
  Future getRequest(
    String apiurl,
  ) async {
    // if (await connectivityServices.onConnectivity()) {
    try {
      var dio = DIO.Dio();
      var response = await dio
          .get(
        apiurl,
        options: DIO.Options(headers: {
          'accept': '*/*',
        }),
      )
          .whenComplete(() {
        debugPrint("Getting Process is Complete:");
      }).catchError((onError) {
        // if (onError is DioError) {
        //     ShowMessage().showErrorMessage("No internet connection!");
        //   }

        debugPrint("GET Error: ${onError.toString()}");
      });

      return response;
    } catch (error) {
      if (error is SocketException) {
        print("No internet connection!");
      }
    }
    // } else {
    //   ShowMessage().showErrorMessage("No internet connection, try later");
    // }
  }
}
