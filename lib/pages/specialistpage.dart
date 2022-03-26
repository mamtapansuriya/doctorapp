import 'dart:developer';

import 'package:doctorapp/model/doctoritem.dart';
import 'package:doctorapp/pages/doctorlist.dart';
import 'package:doctorapp/utils/size_utils.dart';
import 'package:doctorapp/widget/doctordata.dart';
import 'package:flutter/material.dart';

class SpecialistPage extends StatefulWidget {
  SpecialistPage({Key? key}) : super(key: key);

  @override
  State<SpecialistPage> createState() => _SpecialistPageState();
}

class _SpecialistPageState extends State<SpecialistPage> {
  final TextEditingController searchtext = TextEditingController();

  List<Doctoritems> newlist = [];
  List<Doctoritems> dummylist = [];

  void fetchdata(String str) {
    print("--------------000");
    if (str.isNotEmpty) {
      DoctorRecord.forEach((i) {
        if (DoctorRecord.contains(str)) {
          dummylist.add(i);
          log("------------${dummylist}");
          print("object");
        }
      });
      // for (int i = 0; i <= DoctorRecord.length; i++) {
      //   if (DoctorRecord.contains(str)) {
      //     dummylist.add(DoctorRecord[i]);
      //   }
      //   print("${newlist[i].name}");
      // }
      setState(() {
        newlist.clear();
        newlist.addAll(dummylist);
      });

      print("if--------------11111");
    } else {
      setState(() {
        newlist.clear();
        newlist.addAll(DoctorRecord);
      });
      print("else----------22222");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius:
                      const BorderRadius.only(bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
                  child: Container(
                      height: SizeUtils.screenHeight / 4.5,
                      width: SizeUtils.screenWidth,
                      decoration: const BoxDecoration(color: Color(0xff00958C)),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Welcome",
                                  style: TextStyle(fontSize: SizeUtils.fSize_15(), color: Colors.white),
                                ),
                                Text(
                                  "  User",
                                  style: TextStyle(
                                      fontSize: SizeUtils.fSize_28(), color: Colors.white, fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                    flex: 5,
                                    child: TextFormField(
                                      controller: searchtext,
                                      decoration: InputDecoration(
                                        isDense: true,
                                        hintText: "Search Text",
                                        hintStyle: TextStyle(fontSize: SizeUtils.fSize_18(), color: Colors.grey),
                                        filled: true,
                                        fillColor: Colors.white,
                                        border: const OutlineInputBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                            borderSide: BorderSide(color: Color(0xff1E319D), width: 2)),
                                      ),
                                      onChanged: (value) {
                                        value = searchtext.text;
                                        fetchdata(value);
                                      },
                                    )),
                                Expanded(
                                    child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 4),
                                  child: InkWell(
                                    child: Container(
                                      decoration: const BoxDecoration(
                                          color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(15))),
                                      height: SizeUtils.screenHeight / 12,
                                      width: SizeUtils.screenWidth / 10,
                                      child: const Icon(Icons.search, color: Colors.grey),
                                    ),
                                    onTap: () {
                                      fetchdata(searchtext.text);
                                    },
                                  ),
                                ))
                              ],
                            ),
                          ],
                        ),
                      )),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                height: SizeUtils.screenHeight / 1.5,
                width: SizeUtils.screenWidth,
                //  decoration: BoxDecoration(),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Upcoming Appointments",
                        style: TextStyle(fontSize: SizeUtils.fSize_15(), color: Colors.black),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Container(
                          decoration: const BoxDecoration(
                              image: DecorationImage(image: AssetImage("images/hospital.png")),
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(15))),
                          height: SizeUtils.screenHeight / 4,
                          width: SizeUtils.screenWidth,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Nearby Doctor",
                            style: TextStyle(fontSize: SizeUtils.fSize_15(), color: Colors.black),
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.push((context), MaterialPageRoute(builder: (context) => DoctorList()));
                              },
                              child: Text(
                                "See all",
                                style: TextStyle(fontSize: SizeUtils.fSize_15(), color: Color(0xff00958C)),
                              ))
                        ],
                      ),
                      Container(
                          decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15))),
                          height: SizeUtils.screenHeight / 3.8,
                          width: SizeUtils.screenWidth,
                          child: GridView.builder(
                              itemCount: newlist.length,
                              scrollDirection: Axis.vertical,
                              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisSpacing: 10.0,
                                mainAxisSpacing: 8.0,
                                crossAxisCount: 2,
                              ),
                              itemBuilder: (context, i) {
                                return DoctorWidget(
                                  img: newlist[i].image,
                                  name: newlist[i].name,
                                  special: newlist[i].special,
                                );
                              }))
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
