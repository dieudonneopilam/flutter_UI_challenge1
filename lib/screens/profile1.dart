import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Profile1 extends StatelessWidget {
  const Profile1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 25),
                    height: 400,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/img/bg.jpg'),
                          fit: BoxFit.fill),
                    ),
                  ),
                ),
                const Positioned(
                  top: 30,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/img/p.jpeg'),
                    radius: 80,
                  ),
                ),
                const Positioned(
                  top: 200,
                  child: Text(
                    'Dieudonné Ngwangwa',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const Positioned(
                  top: 235,
                  child: Text(
                    'Web Developer',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Positioned(
                  top: 280,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // ignore: avoid_unnecessary_containers
                      Container(
                        child: Column(children: const [
                          Text(
                            '2K',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text(
                            'Friends',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ]),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      // ignore: avoid_unnecessary_containers
                      Container(
                        child: Column(children: const [
                          Text(
                            '26',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text(
                            'Comments',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ]),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      // ignore: avoid_unnecessary_containers
                      Container(
                        child: Column(children: const [
                          Text(
                            '48',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text(
                            'Bookmarks',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ]),
                      )
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Row(
                    children: [
                      Container(
                        width: 140,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(30)),
                        child: TextButton(
                          style: const ButtonStyle(),
                          onPressed: () {},
                          child: const Text(
                            'Follow',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.grey,
                        radius: 25,
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            FontAwesomeIcons.twitter,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.grey,
                        radius: 25,
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            FontAwesomeIcons.pinterest,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'About me',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                'Dieudonne Ngwangwa,  full-Stack developer in laravel livewire and Developer Mobile in flutter',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, color: Colors.blueGrey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
