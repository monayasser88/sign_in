import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _formKey = GlobalKey<FormState>();
  final _passwordController = TextEditingController();
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        SizedBox(
          height: 200,
        ),
        Center(
            child: Text(
          "Welcome Back",
          style: TextStyle(
              color: const Color.fromARGB(255, 14, 90, 16),
              fontSize: 30,
              fontWeight: FontWeight.bold),
        )),
        SizedBox(
          height: 10,
        ),
        Center(
            child: Text("created by soad magdy and mona yasser",
                style: TextStyle(
                  color: const Color.fromARGB(255, 14, 90, 16),
                  fontSize: 18,
                ))),
        SizedBox(height: 35),
        Form(
          key: _formKey,
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextFormField(
                onChanged: (value) {
                  // Handle the value change
                },
                decoration: InputDecoration(
                  fillColor: const Color.fromARGB(
                      255, 204, 242, 206), // Set the background color
                  filled:
                      true, // Ensure the background color fills the entire field
                  border: OutlineInputBorder(
                    // Set the border
                    borderRadius: BorderRadius.all(
                        Radius.circular(15.0)), // Set the border radius
                    borderSide: BorderSide.none, // Set the border side style
                  ),
                  labelText: 'name',
                  hintText: 'Type something...',
                  prefixIcon:
                      Icon(Icons.person), // Replace with desired prefix icon
                  suffixIcon: IconButton(
                    icon: Icon(Icons.clear), // Replace with desired suffix icon
                    onPressed: () {
                      // Handle suffix icon press
                    },
                  ),
                  // Add any other desired decoration properties
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter an email address';
                  }
                  if (!value.contains('@')) {
                    return 'Please enter a valid email address';
                  }
                  return null;
                },
                onSaved: (value) {
                  // Handle saving the value
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextFormField(
                controller:  _passwordController,
                onChanged: (value) {
                  // Handle the value change
                },
                decoration: InputDecoration(
                  fillColor: const Color.fromARGB(
                      255, 204, 242, 206), // Set the background color
                  filled:
                      true, // Ensure the background color fills the entire field
                  border: OutlineInputBorder(
                    // Set the border
                    borderRadius: BorderRadius.all(
                        Radius.circular(15.0)), // Set the border radius
                    borderSide: BorderSide.none, // Set the border side style
                  ),
                  labelText: 'Password',
                  hintText: '********',

                  prefixIcon:
                      Icon(Icons.lock), // Replace with desired prefix icon
                  suffixIcon: IconButton(
      icon: Icon(
        _isPasswordVisible
            ? Icons.visibility
            : Icons.visibility_off, // Change icon based on visibility status
      ),
      onPressed: () {
        setState(() {
          _isPasswordVisible =!_isPasswordVisible;
        });
      },
    ),
    // Add any other desired decoration properties
  ),
  obscureText:!_isPasswordVisible,
                  // Add any other desired decoration propertie
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a password';
                  }
                  if (value.length < 6) {
                    return 'Password must be at least 6 characters long';
                  }
                  if (!value.contains(RegExp(r'[0-9]'))) {
                    return 'Password must contain at least one number';
                  }
                  if (!value.contains(RegExp(r'[A-Z]'))) {
                    return 'Password must contain at least one uppercase letter';
                  }
                  if (!value.contains(RegExp(r'[a-z]'))) {
                    return 'Password must contain at least one lowercase letter';
                  }
                  return null;
                },
                onSaved: (value) {
                  // Handle saving the value
                },
              ),
            ),
          ]),
        ),
        SizedBox(
          height: 30,
        ),
        Center(
          child: ElevatedButton(
            style: const ButtonStyle(
              minimumSize: MaterialStatePropertyAll(Size(300, 50)),
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              )),
              backgroundColor: MaterialStatePropertyAll<Color>(
                  Color.fromARGB(255, 4, 57, 6)),
            ),
            child: const Text(
              'Login',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            onPressed: () {},
          ),
        ),
      ]),
    );
  }
}
