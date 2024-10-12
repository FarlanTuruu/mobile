import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class MembersView extends GetView<HomeController> {
  const MembersView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Members'),
        centerTitle: true,
      ),
      backgroundColor: Color.fromARGB(255, 42, 42, 42),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              child: Text(
                'MEMBERS',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),

            SizedBox(height: 10),
            //frame garis lurus
            Container(
                width: 1000,
                height: 10,
                decoration: BoxDecoration(
                  color: Colors.white,
                )),
            SizedBox(
              height: 20,
            ),

            Container(
              width: 800,
              height: 400,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Frame dalam pertama
                  InkWell(
                    onTap: () {
                      Get.toNamed('/memberslist');
                    },
                    child: Container(
                      width: 400,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        border: Border.all(
                          color: Colors.green,
                          width: 2,
                        ),
                      ),
                      child: Center(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.person,
                                color: Colors.white), // Sesuaikan warna ikon
                            SizedBox(width: 8),
                            Text(
                              'Member Baru',
                              style: TextStyle(
                                  color: Colors.white), // Sesuaikan warna teks
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  // Jarak antara frame dalam pertama dan kedua
                  SizedBox(height: 20),
                  // Frame dalam kedua

                  InkWell(
                    onTap: () {
                      Get.toNamed('/memberslist');
                    },
                    child: Container(
                      width: 400,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 203, 164, 72),
                        border: Border.all(
                          color: Color.fromARGB(255, 203, 164, 72),
                          width: 2,
                        ),
                      ),
                      child: Center(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.person,
                                color: Colors.white), // Sesuaikan warna ikon
                            SizedBox(width: 8),
                            Text(
                              'All Members',
                              style: TextStyle(
                                  color: Colors.white), // Sesuaikan warna teks
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 30,
            ),

            //frame baru dibawah frame luar
            Container(
              width: 400,
              height: 150,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                  width: 2,
                ),
              ),
              child: Center(
                child: ElevatedButton(
                    onPressed: () {
                      Get.toNamed('/login');
                    },
                    style: ElevatedButton.styleFrom(minimumSize: Size(200, 50)),
                    child: Text('back')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
