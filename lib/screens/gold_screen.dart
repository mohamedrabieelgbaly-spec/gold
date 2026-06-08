import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:gold/models/model.dart';
import 'package:gold/screens/home_screen.dart';
import 'package:gold/services/gold_service.dart';
import 'package:gold/widgets/constant.dart';

class GoldScreen extends StatelessWidget {
  const GoldScreen({super.key});
  static String id = 'GoldScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          'Gold',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: kprimaryColor,
          ),
        ),
      ),
      body: FutureBuilder<Either<String, Model>>(
        future: GoldService(dio: Dio()).getGold(),
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
                      'assests/images/pngtree-a-gold-bar-png-image_2444829.jpg',
                      width: 200,
                      height: 250,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '${goldModel.price} EGP',
                        style: TextStyle(fontSize: 24, color: kprimaryColor),
                      ),
                      Text(
                        '',
                        style: TextStyle(fontSize: 24, color: kprimaryColor),
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
                        child: Icon(Icons.send, color: kprimaryColor),
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
