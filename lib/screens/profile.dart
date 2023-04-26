import 'package:challenge_1/screens/profile1.dart';
import 'package:challenge_1/widgets/first.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                    margin: const EdgeInsets.only(bottom: 25),
                    height: 350,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/img/img.webp'),
                          fit: BoxFit.fill),
                    )),
                const Positioned(
                  bottom: 50,
                  left: 20,
                  child: Text(
                    'Alexa john',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                const Positioned(
                  bottom: 0,
                  right: 50,
                  child: CircleAvatar(
                    backgroundColor: Colors.pink,
                    radius: 30,
                    child: Icon(
                      Icons.edit,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                )
              ],
            ),
            const MyList('', title: 'Mobile', subtitle: '+243816012173'),
            const MyList('61 orders', title: 'MemberShip', subtitle: 'Gold'),
            const MyList('',
                title: 'Adress',
                subtitle: 'comm Ibanda, Q de Kadutu, Av FiZI SSA wfif')
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(0),
        child: FloatingActionButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const Profile1();
            },));
          },
          child: const Icon(FontAwesomeIcons.house),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
          height: 60,
          notchMargin: 5,
          shape: const CircularNotchedRectangle(),
          color: Colors.pink,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Icon(
                FontAwesomeIcons.amazon,
                color: Colors.white,
                size: 30,
              ),
              Icon(
                FontAwesomeIcons.apple,
                color: Colors.white,
                size: 40,
              ),
              Icon(
                FontAwesomeIcons.award,
                color: Colors.white,
                size: 40,
              ),
              Icon(
                FontAwesomeIcons.person,
                color: Colors.white,
                size: 40,
              )
            ],
          )),
    );
  }
}
