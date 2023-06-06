import 'dart:io';

import 'package:alemeno/home_viewmodel.dart';
import 'package:alemeno/message.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Click extends StatelessWidget {
  Click({super.key});

  HomeVM vm = Get.put(HomeVM());

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return GetBuilder<HomeVM>(builder: (vm) {
      return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              if (vm.photo == null) {
                Navigator.pop(context);
              } else {
                vm.photo = null;
                vm.update();
              }
            },
            icon: Icon(Icons.arrow_back),
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(
                (Colors.green),
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                alignment: Alignment.bottomCenter,
                height: 180,
                child: Column(
                  children: [
                    SizedBox(height: 30),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.only(left: 60),
                      child: Image.asset(
                        'assets/images/baby1.png',
                        height: 130,
                        width: 160,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  height: height - 180 - 75 - 18,
                  decoration: BoxDecoration(
                      color: Color(0xffF4F4F4),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      )),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 50),
                      vm.photo != null
                          ? ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.file(
                                File(vm.photo!.path),
                                width: 200,
                                height: 200,
                                fit: BoxFit.cover,
                              ),
                            )
                          : Stack(
                              alignment: AlignmentDirectional.center,
                              children: [
                                Center(
                                  child: Positioned(
                                    child: Image.asset(
                                      'assets/images/Cutlery.png',
                                    ),
                                  ),
                                ),
                                Positioned(
                                  child: Center(
                                    child: Positioned(
                                      child: Image.asset(
                                        'assets/images/Corners.png',
                                        // width: 20,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  child: Image.asset(
                                    'assets/images/Plate.png',
                                    width: 250,
                                    height: 250,
                                    fit: BoxFit.cover,
                                    // width: 50,
                                  ),
                                )
                              ],
                            ),
                      SizedBox(height: vm.photo == null ? 10 : 30),
                      Text(
                        vm.photo == null
                            ? 'Click you meal'
                            : "Will you eat this?",
                        style: TextStyle(fontFamily: 'andika', fontSize: 24),
                      ),
                      SizedBox(height: 30),
                      Align(
                        alignment: Alignment.center,
                        child: InkWell(
                          onTap: () async {
                            if (vm.photo != null) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const message()),
                              );
                            } else {
                              await vm.getImage();
                            }
                          },
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Color(0xff3E8B3A),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 2,
                                      color: Color(0xff3E8B3A),
                                      offset: Offset(0, 1))
                                ]),
                            child: Icon(
                              vm.photo == null ? Icons.camera_alt : Icons.check,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  )),
            ],
          ),
        ),
      );
    });
  }
}
