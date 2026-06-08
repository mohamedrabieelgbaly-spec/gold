import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:gold/models/model.dart';

class GoldService {
  final Dio dio;

  GoldService({required this.dio});
  Future<Either<String, Model>> getGold() async {
    try {
      Response response = await dio.get('https://api.gold-api.com/price/XAU');

      return right(Model.formJson(response.data));
    } catch (e) {
      return left(e.toString());
    }
  }
}
