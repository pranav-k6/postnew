// // import 'dart:convert';
// // import 'package:flutter/material.dart';
// // import 'package:http/http.dart'as http;
// // import 'package:postapi/newpost/home.dart';


// // class Login2 extends StatefulWidget {
// //   const Login2({super.key});

// //   @override
// //   State<Login2> createState() => _Login2State();
// // }

// // class _Login2State extends State<Login2> {


// //   final TextEditingController _Emailcontroller=TextEditingController();
// //   final TextEditingController _Passcontroller=TextEditingController();



// //   Future<void>_submit()async{
// //     final response=await http.post(
// //       Uri.parse("https://reqres.in/api/login"),
// //     headers: <String, String>{'Content-Type': 'application/json',},
// //     body: json.encode({
// //     "Email":_Emailcontroller.text,
// //     "Pass":_Passcontroller.text})
// //     );
// //     if (response.statusCode == 201 || response.statusCode == 200)  { 
// //   final res = json.decode(response.body);
// //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: 
// //   Text("login successful! token: ${res["token"]}")));

// //   Navigator.push(context, MaterialPageRoute(builder: (context)=>Nextpage()));

// // } else {final resp = json.decode(response.body);
// //   ScaffoldMessenger.of(context).showSnackBar(
// //     SnackBar(content: Text("error:${resp["error"]}Login failed"))
// //   );
// // }

// //   }
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: Padding(
// //         padding: const EdgeInsets.all(8.0),
// //         child: Column(
// //           children: [
// //             TextFormField(
// //               controller: _Emailcontroller,
// //               decoration: InputDecoration(
// //                 border: OutlineInputBorder(),
// //                 label: Text("email")
// //               ),
              
              
// //             ),
// //             SizedBox(height: 20,),
// //              TextFormField(
// //               controller: _Passcontroller,
// //               decoration: InputDecoration(
// //                 border: OutlineInputBorder(),
// //                 label: Text("password")
// //               ),
// //             ),
// //             SizedBox(height: 20,),
// //             ElevatedButton(onPressed: () {
// //             _submit();
// //             }, child: Text("login"))
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }


// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:postapi/newpost/home.dart';

// class Login2 extends StatefulWidget {
//   const Login2({super.key});

//   @override
//   State<Login2> createState() => _Login2State();
// }

// class _Login2State extends State<Login2> {
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _passController = TextEditingController();

//   Future<void> _submit() async {
//     if (!_formKey.currentState!.validate()) {
//       return;
//     }

//     final url = "https://reqres.in/api/login";
//     {
//       final response = await http.post(
//         Uri.parse(url),
//         headers: {'Content-Type': 'application/json'},
//         body: json.encode({
//           "email": _emailController.text,
//           "password": _passController.text,
//         }),
//       );

//       if (response.statusCode == 200) {
//         final res = json.decode(response.body);
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text("Login successful! Token: ${res["token"]}")),
//         );
//         Navigator.push(
//           context,
//           MaterialPageRoute(builder: (context) => Nextpage()),
//         );
//       } else {
//         final errorRes = json.decode(response.body);
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text("Error: ${errorRes["error"]}")),
//         );
//       }
//     } 
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Login Page")),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Form(
//           key: _formKey,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [
//               TextFormField(
//                 controller: _emailController,
//                 decoration: InputDecoration(
//                   border: OutlineInputBorder(),
//                   labelText: "Email",
//                 ),
//                 keyboardType: TextInputType.emailAddress,
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return "Please enter your email";
//                   }
//                   return null;
//                 },
//               ),
//               SizedBox(height: 20),
//               TextFormField(
//                 controller: _passController,
//                 decoration: InputDecoration(
//                   border: OutlineInputBorder(),
//                   labelText: "Password",
//                 ),
//                 obscureText: true,
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return "Please enter your password";
//                   }
//                   return null;
//                 },
//               ),
//               SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: _submit,
//                 child: Text("Login"),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:postapi/newpost/home.dart';



// class Login2 extends StatefulWidget {
//   const Login2({super.key});

//   @override
//   State<Login2> createState() => _Login2State();
// }

// class _Login2State extends State<Login2> {

// final _formKey = GlobalKey<FormState>();  

// TextEditingController _emailController = TextEditingController(); 
// TextEditingController _passwordController = TextEditingController();

// Future <void> submit() async {
//   final response = await http.post(
//     Uri.parse("https://reqres.in/api/login"),
//     headers:{"content-type": "application/json"},
//     body:json.encode({
//       "email":_emailController.text,
//       "password":_passwordController.text,
//     }),
//   );
//   if(response.statusCode==200||response.statusCode ==201){
//     final Userdata = json.decode(response.body);
//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(content: Text("Login Successful. Token: ${Userdata['token']}"))
//     );
//     Navigator.push(context,MaterialPageRoute(builder: (context) => Nextpage(),));
//   }
//   else{
//     final Usererror = json.decode(response.body);
//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(content: Text("Error: ${Usererror['error'] ?? 'Login Failed'}"))
//     );
//   }
// }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Form(
//         key: _formKey,
//         child: Column(
//           children: [
//             Container(
//               height: 300,
//               width: double.infinity,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.only(bottomRight: Radius.circular(120)),
//                 image: DecorationImage(image: AssetImage("assets/images.jpg"),fit: BoxFit.cover)
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Column(
//                 children: [
//                   TextFormField(
//                     controller: _emailController,
//                     validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter your email';
//                   }
//                   return null;
//                 },
//                 autovalidateMode: AutovalidateMode.disabled,
//                     decoration: InputDecoration(
//                       hintText: "Username",
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10)
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 10,),
//                   TextFormField(
//                     controller: _passwordController,
//                     validator: (value) {
//                   if (value==null || value.length<5) {
//                     return 'Please enter your password';
//                   }
//                   return null;
//                 },
//                 autovalidateMode: AutovalidateMode.disabled,
//                     obscureText: true,
//                     decoration: InputDecoration(
//                       hintText: "password",
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10)
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 60,),
//                   Center(
//                     child: GestureDetector(
//                       onTap: () {
//                         if(_formKey.currentState!.validate()){
//                           submit();
//                         }
//                       },
//                       child: Container(
//                         height: 40,
//                         width: double.infinity,
//                         decoration: BoxDecoration(
//                           color: Colors.grey,
//                           borderRadius: BorderRadius.circular(10)
//                         ),
//                         child: Center(child: Text("Login")),
//                       ),
//                     ),
//                   )
//                 ],
//               ),
//             )
//           ],
//         ),
//       )
//     );
//   }
// }

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:postapi/newpost/home.dart';

class Login2 extends StatefulWidget {
  const Login2({super.key});

  @override
  State<Login2> createState() => _Login2State();
}

class _Login2State extends State<Login2> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<void> submit() async {
    // try {
      final response = await http.post(
        Uri.parse("https://reqres.in/api/login"),
        headers: {"Content-Type": "application/json"},
        body: json.encode({
          "email": _emailController.text,
          "password": _passwordController.text,
        }),
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        final userData = json.decode(response.body);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Login Successful. Token: ${userData['token']}")),
        );
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Nextpage()),
        );
      } else {
        final userError = json.decode(response.body);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Error: ${userError['error'] ?? 'Login Failed'}")),
        );
      }
    // } catch (e) {
    //   ScaffoldMessenger.of(context).showSnackBar(
    //     SnackBar(content: Text("An error occurred: $e")),
    //   );
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Container(
              //   height: 300,
              //   width: double.infinity,
              //   decoration: const BoxDecoration(
              //     borderRadius: BorderRadius.only(
              //       bottomRight: Radius.circular(120),
              //     ),
              //     image: DecorationImage(
              //       image: AssetImage("assets/images.jpg"),
              //       fit: BoxFit.cover,
              //     ),
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    TextFormField(
                      controller: _emailController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email';
                        }
                        // if (!RegExp(r"^[a-zA-Z0-9._%-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$")
                        //     .hasMatch(value)) {
                        //   return 'Please enter a valid email';
                        // }
                        // return null;
                      },
                      autovalidateMode: AutovalidateMode.disabled,
                      decoration: InputDecoration(
                        hintText: "Email",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      controller: _passwordController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        }
                        if (value.length < 5) {
                          return 'Password must be at least 5 characters long';
                        }
                        return null;
                      },
                      autovalidateMode: AutovalidateMode.disabled,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          if (_formKey.currentState!.validate()) {
                            submit();
                          }
                        },
                        child: Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Center(
                            child: Text(
                              "Login",
                              style: TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

