import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:gold/models/model.dart';

class SliverService {
  final Dio dio;

  SliverService({required this.dio});
  Future<Either<String, Model>> getSliver() async {
    try {
      Response response = await dio.get('https://api.gold-api.com/price/XAG');

      return right(Model.formJson(response.data));
    } catch (e) {
      return left(e.toString());
    }
  }
}
