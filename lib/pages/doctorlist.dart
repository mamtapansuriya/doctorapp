import 'package:doctorapp/model/doctoritem.dart';
import 'package:doctorapp/utils/size_utils.dart';
import 'package:doctorapp/widget/doctordata.dart';
import 'package:flutter/material.dart';

class DoctorList extends StatefulWidget {
  const DoctorList({Key? key}) : super(key: key);

  @override
  _DoctorListState createState() => _DoctorListState();
}

class _DoctorListState extends State<DoctorList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Nearby Doctors",
          style: TextStyle(fontSize: SizeUtils.fSize_20(), color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
          child: Container(
            height: SizeUtils.screenHeight,
            width: SizeUtils.screenWidth,
            color: Colors.grey[100],
            child: GridView.builder(
                itemCount: DoctorRecord.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 8.0,
                  crossAxisCount: 2,
                ),
                itemBuilder: (context, i) {
                  return DoctorWidget(
                    img: DoctorRecord[i].image,
                    name: DoctorRecord[i].name,
                    special: DoctorRecord[i].special,
                  );
                }),
          ),
        ),
      ),
    );
  }
}
