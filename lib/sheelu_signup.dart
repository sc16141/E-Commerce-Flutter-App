
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';

import 'loginScreen/login_screen.dart';


class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
final TextEditingController _emailController = TextEditingController();
final TextEditingController _passwordController = TextEditingController();
 final TextEditingController _nameController  = TextEditingController();
 final FirebaseAuth _auth = FirebaseAuth.instance;
 Future<void>Signup()async {
   try {
     UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
         email: _emailController.text,
         password: _passwordController.text
     );
     print("User Signed Up: ${userCredential.user?.email}");
     ScaffoldMessenger.of(context).showSnackBar(
       SnackBar(content: Text("Sign-Up Successful")),
     );
   } catch (e) {
     ScaffoldMessenger.of(context).showSnackBar(
       SnackBar(content: Text("Error: $e")),
     );
   }
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('firebase demo'),
        centerTitle: true,

      ),
      body:Center(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
          
            mainAxisAlignment: MainAxisAlignment.center,
          
             children: [
               Padding(padding: EdgeInsets.all(20)),
          
               TextField(
                 controller: _nameController,
                 decoration: InputDecoration(
                   prefixIcon: Icon(Icons.person),
                   //hintText: 'Name',
                     labelText: 'Name',
                   border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(20)
                   )
                 ),
               ),
               SizedBox( height: 10,),
               TextField(
                 controller: _emailController,
                 decoration: InputDecoration(
                   labelText: 'email',
                   prefixIcon: Icon(Icons.email_outlined),
                   border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(20),
                   )
                 ),
               ),
               SizedBox(height: 20,),
               TextField(
                 controller: _passwordController,

                 decoration: InputDecoration(
                     labelText: 'Password,',
                     prefixIcon: Icon(Icons.password_outlined),
                     border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(20),
                     )
                 ),
               ),
               SizedBox(height: 20,),
               OutlinedButton(
                 onPressed: () {
                   Signup();
                 },
                 child: Text("Sign up"),
               ),
SizedBox(height: 20,),
                Row(
                     mainAxisSize: MainAxisSize.min,
                     children: [
                       Text('Already have an account? '),
                       GestureDetector(
                         onTap: () {


                           Navigator.push(
                             context,
                             MaterialPageRoute(builder: (context) => LoginScreen()),
                           );
                         },
                         child: Text(
                           'Login',
                           style: TextStyle(
                             color: Colors.blue,
                             decoration: TextDecoration.underline,
                           ),
                         ),
                       ),
                 ],
               ),
             ],

          ),
        ),
      )

    );
  }
}


