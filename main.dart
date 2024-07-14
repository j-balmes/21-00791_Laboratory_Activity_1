import 'package:flutter/material.dart';

void main() {
  runApp(MyProfileApp());
}

class MyProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            title: Text('PERSONAL PROFILE'),
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.person), text: 'Personal Information'),
                Tab(icon: Icon(Icons.school), text: 'Education'),
                Tab(icon: Icon(Icons.code), text: 'Skills'),
                Tab(icon: Icon(Icons.interests), text: 'Interests'),
                Tab(icon: Icon(Icons.contact_mail), text: 'Contact'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              PersonalInfoScreen(),
              EducationScreen(),
              SkillsScreen(),
              InterestsScreen(),
              ContactScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
class PersonalInfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFFE6E6FA), // Lavender color
            Color(0xFFFFC0CB), // Pastel rose color
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('joann.jpg'),
            ),
            SizedBox(height: 16),
            Text(
              'JOANN VELASQUEZ BALMES',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.teal,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Age: 22',
              style: TextStyle(
                fontSize: 20,
                color: Colors.teal,
              ),
            ),
            SizedBox(height: 16),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.8),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                'Currently studying at Batangas State University The National Engineering University taking Bachelor of Science in Information Technology Major in Business Analytics.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, color: Colors.teal.shade900),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class EducationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16.0),
      children: [
        ListTile(
          title: Text('Bachelor of Science in Information Technology Major in Business Analytics'),
          subtitle: Text('Batangas State University, 2021-2025'),
        ),
        Divider(),
        ListTile(
          title: Text('Information and Communication Technology Major in CSS'),
          subtitle: Text('Gulod Senior High School, 2019-2021'),
        ),
        Divider(),
        ListTile(
          title: Text('Sto.Nino National High School'),
          subtitle: Text('2014-2019'),
        ),
        Divider(),
        ListTile(
          title: Text('Haligue Silangan Elementary School'),
          subtitle: Text('2009-2014'),
        ),
        Divider(),
        ListTile(
          title: Text('Haligue Silangan Day Care Center'),
          subtitle: Text('2007-2009'),
        ),
      ],
    );
  }
}

class SkillsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Personal Skills', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          Text('• Communication\n• Team Work\n• Problem-Solving'),
          SizedBox(height: 16),
          Text('IT Skills', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          Text('• Database Management\n• Data Analysis and Visualization\n• IT Support and Trouble Shooting'),
          SizedBox(height: 16),
          Text('Certifications', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          Text('• National Certificate II Computer System Servicing\n• Count Her In\n• TechTalks III '),
        ],
      ),
    );
  }
}

class InterestsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Personal Interests', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          Text('Data analysis and visualization are fascinating and highly valuable skills. It involve collecting, processing, and presenting data in a way that reveals insights and helps in decision-making.'),
          SizedBox(height: 16),
          Text('Data Analysis', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          Text('• To collect data\n• To analyze data\n•  Identifying trends, patterns, and correlations.'),
          SizedBox(height: 16),
          Text('Visualization', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          Text('• To create a dashboard\n• To generates a reports'),
        ],
      ),
    );
  }
}

class ContactScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Contact Information', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          Icon(Icons.email, size: 15),
          Text('Email: 21-00791@g.batstate-u.edu.ph'),
          SizedBox(height: 8),
          Icon(Icons.call, size: 15),
          Text('Phone: +639972809051'),
          SizedBox(height: 8),
          Icon(Icons.facebook, size: 15),
          Text('Facebook: joann.balmes'),
        ]
      ),
    );
  }
}
