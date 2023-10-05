import 'package:flutter/material.dart';
import 'bottom_navigation_bar.dart';


class LoginPage extends StatefulWidget{
  const LoginPage ({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();

}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate to the main app after login button is pressed
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => MyBottomNavigationBar()),
            // );
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
          ),// Set the background color to black
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 100,
                          child: Image.asset('images/location.png', width: 1000, height: 1000), // Replace with your image path and adjust the width and height as needed
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Welcome',
                          style: TextStyle(
                            color: Colors.black,
                            // fontFamily:'',
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                          ),
                        ),
                      ],
                    ),
                  ),

                ],),
            ),
          ),
        ),
      ),
    );
  }
}

class loginPage extends StatefulWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        backgroundColor: Colors.red,
        elevation: 5, // Add elevation for a subtle shadow
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                //Sign in to chat
                const SizedBox(height: 5),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 1), // Adjust the padding value as needed
                      child: Image.asset('images/login.png', width: 100, height: 100), // Replace with your image path and adjust the width and height as needed
                    ),
                    const Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.black,
                        // fontFamily: 'BebasNeue',
                        fontWeight: FontWeight.bold,
                        fontSize: 36,
                      ),
                    ),
                  ],
                ),


                //Email text
                Column(
                    children: [
                      const SizedBox(height: 20),
                      LimitedBox(
                        maxHeight: 163, // Set the maximum height for the container
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),  // Add the desired padding
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              color: Colors.white24,
                              borderRadius: BorderRadius.circular(60), // Set the border radius to make it rectangular
                            ),
                            child: Container(
                              // color: Colors.grey,
                              child: Column(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.symmetric(horizontal: 45.0),
                                    child: Container(
                                      decoration: const BoxDecoration(),
                                      child: const Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          'Email',
                                          style: TextStyle(
                                            color: Colors.red,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.symmetric(horizontal: 45.0),
                                    child: const Align(
                                      alignment: Alignment.centerLeft,
                                      child: TextField(
                                        style: TextStyle(color: Colors.red),
                                        decoration: InputDecoration(
                                          // hintText: 'Enter your Email',
                                          // hintStyle: TextStyle(color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  Container(
                                    padding: const EdgeInsets.symmetric(horizontal: 45.0),
                                    child: Container(
                                      decoration: BoxDecoration(),
                                      child: const Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          'Password',
                                          style: TextStyle(
                                            color: Colors.red,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.symmetric(horizontal: 45.0),
                                    child: const TextField(
                                      style: TextStyle(color: Colors.red),
                                      obscureText: true,
                                      decoration: InputDecoration(
                                        // hintText: 'Enter your Password',
                                        // hintStyle: TextStyle(color: Colors.black),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ]
                ),

                //login button
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 105.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyBottomNavigationBar()),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(33),
                      ),
                      child: const Center(
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.white,
                            // fontWeight: FontWeight.bold,
                            // fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                //forgot password
                const SizedBox(height: 25),
                const Text(
                  'Forgot Password?',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),

              ],),
          ),
        ),
      ),
    );
  }
}