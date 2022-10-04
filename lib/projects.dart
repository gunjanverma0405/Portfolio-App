import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue[100],
        appBar: AppBar(
          backgroundColor: Colors.blue[100],
          title: const Text(
            'My Projects',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
        ),
        body: ListView(
          children: [
            GestureDetector(
              onTap: () {
                final Uri _url = Uri.parse('https://github.com/');
                _launchUrl(_url);
              },
              child: const Card(
                color: Color.fromARGB(255, 18, 87, 145),
                child: ListTile(
                    title: Text(
                      'Project 1: Portfolio App',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                    subtitle: Text(
                      'This project is to learn flutter basics',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    )),
              ),
            ),
            GestureDetector(
              onTap: () {
                final Uri _url = Uri.parse('https://github.com/');
                _launchUrl(_url);
              },
              child: const Card(
                color: Color.fromARGB(255, 18, 87, 145),
                child: ListTile(
                  title: Text(
                    'Project 2: Flying Fish Game',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text(
                    'This project is one of the most weird things I have ever done',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Future<void> _launchUrl(_url) async {
  if (!await launchUrl(_url)) {
    throw 'Could not launch $_url';
  }
}
