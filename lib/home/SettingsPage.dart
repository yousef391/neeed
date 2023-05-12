import 'package:flutter/material.dart';
import 'package:sign_in/sign/new_pass.dart';


class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  CircleAvatar(
                    foregroundImage: AssetImage('images/islem.jpg'),
                    radius: 40,
                  ),
                  SizedBox(width: 25),
                  Text(
                    'Islem Charaf Eddine',
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Expanded(
              child: Container(
                child: ListView(
                  children: [
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.person),
                      title: Text('Edit Profile'),
                      trailing: Icon(Icons.arrow_forward_ios),
                      onTap: () {
                        // navigate to edit profile page
                      },
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.lock),
                      title: Text('Change Password'),
                      trailing: Icon(Icons.arrow_forward_ios),
                      onTap: () {

                        Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>  new_pass()),
                            );
                        // navigate to change password page
                      },
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.language),
                      title: Text('Change Language'),
                      trailing: Icon(Icons.arrow_forward_ios),
                      onTap: () {
                        // navigate to change language page
                      },
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.notifications),
                      title: Text('Notifications'),
                      trailing: Switch(
                        value: true,
                        onChanged: (value) {},
                        activeColor: Color(0xff0097b2),
                      ),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.info),
                      title: Text('About Us'),
                      trailing: Icon(Icons.arrow_forward_ios),
                      onTap: () {
                        // navigate to about us page
                      },
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.logout),
                      title: Text(
                        'Log Out',
                        style: TextStyle(
                          color: Color(0xff0097b2),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () {
                        // perform log out action
                      },
                    ),
                    Divider(),
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