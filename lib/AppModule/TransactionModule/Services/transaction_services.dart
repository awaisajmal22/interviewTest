import 'package:test/AppModule/TransactionModule/Model/transaction_model.dart';
import 'package:test/Network/api_services.dart';
import 'package:test/Network/api_url.dart';

class TransactionServices {
  Future<TransactionDataModel> getDataModel() async {
    TransactionDataModel dataModel = TransactionDataModel();
    try {
      var responce = await ApiServices().getRequest(ApiUrl.apiUrl);
      print(responce);
      if (responce.statusCode == 200) {
        dataModel = TransactionDataModel.jsonToList(responce) as TransactionDataModel;
      }
    } catch (e) {
      print(e);
    }
    return dataModel;
  }
}
