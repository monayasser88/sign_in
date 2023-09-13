import 'package:flutter/material.dart';
import 'sign_in.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                "https://i.pinimg.com/236x/ed/04/85/ed04850e8f61ca8602ce74d50ebcedc8.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 120),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "The best",
                  style: TextStyle(
                      fontSize: 45,
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "app for",
                  style: TextStyle(
                      fontSize: 45,
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "your plants",
                  style: TextStyle(
                      fontSize: 45,
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 200,
                ),
                // TextButton(onPressed:(){
                // } , child: Center(child: Text('Sign in',style: TextStyle(fontSize: 18,color: Colors.white),)),
                // style: ButtonStyle()
                // ),
                Center(
                  child: ElevatedButton(
                    style: const ButtonStyle(
                      minimumSize: MaterialStatePropertyAll(Size(300, 50)),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      )),
                      backgroundColor: MaterialStatePropertyAll<Color>(
                          Color.fromARGB(0, 162, 154, 154)),
                    ),
                    child: const Text(
                      'Sign in',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return SignIn();
                      }));
                    },
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Center(
                    child: Text(
                  "Create an Account!",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ))
              ],
            ),
          ),
        ),
      ), /* add child content here */
    );
  }
}
