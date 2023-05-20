// To parse this JSON data, do
//
//     final transactionDataModel = transactionDataModelFromJson(jsonString);

import 'dart:convert';


class TransactionDataModel {
    DateTime? date;
    String? amount;
    String? currency;
    Type? type;
    String? description;
    String? id;

    TransactionDataModel({
        this.date,
         this.amount,
         this.currency,
         this.type,
         this.description,
         this.id,}
    );

    factory TransactionDataModel.fromJson(Map<String, dynamic> json) => TransactionDataModel(
        date: DateTime.parse(json["date"]) ,
        amount: json["amount"],
        currency: json["currency"],
        type: typeValues.map[json["type"]]!,
        description: json["description"],
        id: json["id"],
    );

static List<TransactionDataModel> jsonToList(List<dynamic> emote) =>
      emote.map<TransactionDataModel>((item) => TransactionDataModel.fromJson(item)).toList();

    Map<String, dynamic> toJson() => {
        "date": date!.toIso8601String(),
        "amount": amount,
        "currency": currency,
        "type": typeValues.reverse[type],
        "description": description,
        "id": id,
    };
}

enum Type { DEPOSIT, PAYMENT, INVOICE, WITHDRAWAL }

final typeValues = EnumValues({
    "deposit": Type.DEPOSIT,
    "invoice": Type.INVOICE,
    "payment": Type.PAYMENT,
    "withdrawal": Type.WITHDRAWAL
});

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        reverseMap = map.map((k, v) => MapEntry(v, k));
        return reverseMap;
    }
}
