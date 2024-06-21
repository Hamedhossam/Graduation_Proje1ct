import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class ProductModel {
  final String name;
  final String description;
  final String image;

  ProductModel({
    required this.name,
    required this.description,
    required this.image,
  });
  factory ProductModel.fromJson(json, int i, String category) {
    if (category == 'Drinks') {
      return ProductModel(
        name: json[0]["products"][i]["name"],
        image: json[0]["products"][i]["imageURL"],
        description: json[0]["products"][i]["description"],
      );
    } else if (category == 'Chips') {
      return ProductModel(
        name: json[1]["products"][i]["name"],
        image: json[1]["products"][i]["imageURL"],
        description: json[1]["products"][i]["description"],
      );
    } else {
      return ProductModel(
        name: json[2]["products"][i]["name"],
        image: json[2]["products"][i]["imageURL"],
        description: json[2]["products"][i]["description"],
      );
    }
  }
}

class services {
  Future<List<ProductModel>> getProducts(String category) async {
    Response response =
        await Dio().get('https://scmapi.runasp.net/api/Canteen/Categories');

    if (category == 'Drinks') {
      List<dynamic> products = response.data[0]["products"];
      List<ProductModel> productsList = [];
      for (var i = 0; i < products.length; i++) {
        productsList.add(ProductModel.fromJson(response.data, i, category));
      }
      return productsList;
    } else if (category == 'Chips') {
      List<dynamic> products = response.data["donors"];
      List<ProductModel> productsList = [];
      for (var i = 0; i < products.length; i++) {
        productsList.add(ProductModel.fromJson(response.data, i, category));
      }
      return productsList;
    } else {
      List<dynamic> products = response.data["donors"];
      List<ProductModel> productsList = [];
      for (var i = 0; i < products.length; i++) {
        productsList.add(ProductModel.fromJson(response.data, i, category));
      }
      return productsList;
    }
  }
}
