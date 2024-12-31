import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;

class Newlog extends StatefulWidget {
  const Newlog({super.key});

  @override
  State<Newlog> createState() => _NewlogState();
}

class _NewlogState extends State<Newlog> {
  final TextEditingController email=TextEditingController();
  final TextEditingController pass=TextEditingController();

  Future<void>loge()async{
    final url="https://reqres.in/api/register";
    final response=await http.post(
      Uri.parse(url),
      headers: <String, String>{
      'Content-Type': 'application/json',
    },
    body: json.encode({"Email":email.text,"Pass":pass.text})
    );
    if(response.statusCode==201||response.statusCode==200){
      final Userdata=jsonDecode(response.body);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Login succesful. Token :{$Userdata['token']}"))
      );
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Next()));
    }else {
      final Errordata=jsonDecode(response.body);
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text("Error :${Errordata['error'] ?? 'Login Failed'}"))
  );
}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextFormField(
              controller: email,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text("email")
              ),
              
            ),
            SizedBox(height: 20,),
            TextFormField(
              controller: pass,
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text("password")
              ),
              
            ),
            SizedBox(height: 20,),


            ElevatedButton(onPressed: () {
            loge();
            }, child: Text("login"))

        ],
      ),
    );
  }
}
class Next extends StatelessWidget {
  const Next({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(
      child: Text("welcome"),
    ),


    );
  }
}

// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart'as http;

// class Logpost extends StatefulWidget {
//   const Logpost({super.key});

//   @override
//   State<Logpost> createState() => _LogpostState();
// }

// class _LogpostState extends State<Logpost> {
// TextEditingController _Emailcontroller =TextEditingController();
// TextEditingController _Passcontroller =TextEditingController();

// Future<void>_submit()async {
//   final response = await http.post(
//     Uri.parse("https://reqres.in/api/register"),
//     headers: {"content-type":'register/json'},
//     body: {
//       'email': _Emailcontroller.text,
//       'password':_Passcontroller.text
//     }
//   );
//   if(response.statusCode==200||response.statusCode==201){
//     final Userdata =json.decode(response.body);
//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(content: Text("Login successful. Token:${Userdata ['token']}"))
//     );
//     Navigator.push(context, MaterialPageRoute(builder: (context) => Next(),));
//   }
//   else{
//     final Usererror =json.decode(response.body);
//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(content: Text("Error: ${Usererror ['error'] ?? 'Login Failed'}"))
//     );
//   }
// }



//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           TextFormField(
//             decoration: InputDecoration(
//               hintText: 'username',
//               border: OutlineInputBorder()
//             ),
//           ),
//           SizedBox(height: 10,),
//           TextFormField(
//             obscureText: true,
//             decoration: InputDecoration(
//               hintText: 'password',
//               border: OutlineInputBorder()
//             ),
//           ),
//           SizedBox(height: 60,),
//           Center(
//             child: GestureDetector(
//               onTap: () {
//                 _submit();
//               },
//               child: Container(
//                 height: 40,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                   color: Colors.red,
//                   borderRadius: BorderRadius.circular(15)
//                 ),
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }


// class Next extends StatelessWidget {
//   const Next({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(body: Center(
//       child: Text("welcome"),
//     ),


//     );
//   }
// }
