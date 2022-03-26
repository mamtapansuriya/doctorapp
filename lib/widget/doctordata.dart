import 'package:doctorapp/utils/size_utils.dart';
import 'package:flutter/material.dart';

class DoctorWidget extends StatelessWidget {
  String img;
  String name;
  String special;
  DoctorWidget({required this.img, required this.name, required this.special});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(15))),
      height: SizeUtils.screenHeight / 4,
      width: SizeUtils.screenWidth / 2.5,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(img), fit: BoxFit.cover),
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              height: SizeUtils.screenHeight / 8,
              width: SizeUtils.screenWidth / 3,
            ),
            SizedBox(
              height: SizeUtils.screenHeight / 30,
            ),
            Text(
              name,
              style: TextStyle(fontSize: SizeUtils.fSize_18(), color: Colors.black),
            ),
            Text(
              special,
              style: TextStyle(fontSize: SizeUtils.fSize_15(), color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
