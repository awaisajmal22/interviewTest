import 'package:dio/dio.dart';
import 'package:test/AppModule/TransactionModule/Model/transaction_model.dart';
import 'package:test/Network/api_services.dart';
import 'package:test/Network/api_url.dart';

class TransactionServices {
  Future getDataModel() async {
    
    Dio dio = Dio();
    List<TransactionDataModel> dataModel = <TransactionDataModel>[];
    try {
      var responce = await dio.get(ApiUrl.apiUrl);
      // print(responce);
      if (responce.statusCode == 200) {
        dataModel = TransactionDataModel.jsonToList(responce.data);

        print(dataModel);
      }
    } catch (e) {
      print(e);
    }
    return dataModel;
  }
}
