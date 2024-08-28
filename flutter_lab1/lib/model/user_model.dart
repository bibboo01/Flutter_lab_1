// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
    String id;
    String userName;
    String name;
    String role;
    DateTime createdAt;
    DateTime updatedAt;
    int v;

    Welcome({
        required this.id,
        required this.userName,
        required this.name,
        required this.role,
        required this.createdAt,
        required this.updatedAt,
        required this.v,
    });

    factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        id: json["_id"],
        userName: json["user_name"],
        name: json["name"],
        role: json["role"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "user_name": userName,
        "name": name,
        "role": role,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "__v": v,
    };
}
