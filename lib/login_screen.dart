import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool passwordVisibility = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        elevation: 4.0,
        leading: Padding(
          padding: EdgeInsets.all(12),
          child: Image.network(
              'https://d17ivq9b7rppb3.cloudfront.net/original/commons/new-ui-logo.png'),
        ),
      ),
      endDrawer: Drawer(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              MenuTile(title: 'Event'),
              MenuTile(title: 'Course'),
              MenuTile(title: 'Academy'),
              MenuTile(title: 'Challege')
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 32, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.asset('assets/img/dicoding_icon.png',
                width: 200, height: 100),
            SizedBox(height: 20),
            Text('Masuk',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold)

                /// Option
                /// Theme.of(context).textTheme.headline3!.copyWith(
                ///     color: Colors.black, fontWeight: FontWeight.bold)
                ),
            Center(child: Image.asset('assets/img/illustration.png')),
            SizedBox(
              height: 16,
            ),
            Text('Email',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  hintText: 'Alamat Email',
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                  isDense: true),
            ),
            Text('Password',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            TextField(
              obscureText: passwordVisibility,
              decoration: InputDecoration(
                  hintText: 'Masukkan Password',
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                  suffixIcon: IconButton(
                    icon: Icon(passwordVisibility
                        ? Icons.visibility
                        : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        passwordVisibility = !passwordVisibility;
                      });
                    },
                  ),
                  isDense: true),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Lupa Password?',
              style:
                  TextStyle(fontSize: 16, decoration: TextDecoration.underline),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.pink),
              onPressed: () {
                /// Jika dilempar ke halaman lain
              },
              child: Text(
                'Masuk',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            Text('Atau masuk dengan', style: TextStyle(fontSize: 16)),
            Row(
              children: <Widget>[
                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {},
                  child: Image.network(
                      'https://pngimg.com/uploads/google/google_PNG19644.png',
                      width: 55),
                ),
                SizedBox(width: 16),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {},
                  child: Image.network(
                      'https://pngimg.com/uploads/facebook_logos/facebook_logos_PNG19749.png',
                      width: 55),
                )
              ],
            ),
            SizedBox(height: 8),
            RichText(
              text: TextSpan(
                  text: 'Belum punya akun? Ayo ',
                  style: TextStyle(color: Colors.black54, fontSize: 16),
                  children: [
                    TextSpan(
                        text: 'Daftar',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold))
                  ]),
            )
          ],
        ),
      ),
    );
  }
}

class MenuTile extends StatelessWidget {
  final String title;

  const MenuTile({required this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title, style: Theme.of(context).textTheme.bodyText1),
      trailing: Icon(Icons.navigate_next, color: Colors.black),
    );
  }
}
