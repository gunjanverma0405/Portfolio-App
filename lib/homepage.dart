import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

_sendingMails() async {
  var url = Uri.parse("mailto:feedback@geeksforgeeks.org");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/bg.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage(
                'images/GV_pic.png',
              ),
            ),
            const Text('Gunjan Verma',
                style: TextStyle(
                  fontFamily: 'Alkalami',
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                )),
            const Text(
              'MCA, IT',
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            GestureDetector(
              onTap: () {
                final Uri _url = Uri.parse("mailto:gunjanverma0412@gmail.com");
                _launchUrl(_url);
              },
              child: Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 86, 190, 192),
                ),
                child: Row(
                  children: const [
                    Icon(Icons.email_outlined),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'gunjanverma0412@gmail.com',
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'projects_page');
              },
              child: Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 86, 190, 192),
                ),
                child: Row(
                  children: const [
                    Icon(Icons.file_copy),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Projects',
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                final Uri _url = Uri.parse(
                    'https://www.linkedin.com/in/gunjan-verma-4952a51a0/');
                _launchUrl(_url);
              },
              child: Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 86, 190, 192),
                ),
                child: Row(
                  children: const [
                    Icon(Icons.connect_without_contact),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Connect with me on LinkedIn!',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//you can write it anywhere outside the class
Future<void> _launchUrl(_url) async {
  if (!await launchUrl(_url)) {
    throw 'Could not launch $_url';
  }
}
