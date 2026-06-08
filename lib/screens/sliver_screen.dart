import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:gold/models/model.dart';
import 'package:gold/screens/home_screen.dart';
import 'package:gold/services/sliver_service.dart';

import '../widgets/constant.dart';

class sliverScreen extends StatelessWidget {
  const sliverScreen({super.key});
  static String id = 'sliverScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          'Sliver',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: YprimaryColor,
          ),
        ),
      ),
      body: FutureBuilder<Either<String, Model>>(
        future: SliverService(dio: Dio()).getSliver(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            // ignore: unused_local_variable
            final eitherResult = snapshot.data!;
            return eitherResult.fold((error) => Center(child: Text('error')), (
              goldModel,
            ) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Image.asset(
                      'assests/images/6d1cfc15-e931-471d-be78-a76d565471b1-1000x1000-QTHkVYg6yYQl1ajVCpxzFkYlNR8sxrzkDseGJ3Oi.webp',
                      width: 200,
                      height: 250,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '${goldModel.price} EGP',
                        style: TextStyle(fontSize: 24, color: YprimaryColor),
                      ),
                      Text(
                        '',
                        style: TextStyle(fontSize: 24, color: YprimaryColor),
                      ),
                    ],
                  ),
                  SizedBox(height: 80),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, HomeScreen.id);
                        },
                        child: Icon(Icons.send, color: YprimaryColor),
                      ),
                    ],
                  ),
                ],
              );
            });
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
