// import 'package:assessment_application_1/home.dart';
// import 'package:flutter/material.dart';

// class LoginPage extends StatefulWidget {
//   LoginPage({super.key});

//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   bool? ischecked = false;
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();
//   final _formKey = GlobalKey<FormState>();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
      
//       body: Form(
//         key: _formKey,
//         child: Row(
//           children: [
//             Container(height: double.infinity,width: 600,
//             color: Colors.black,
//             child: Padding(
//               padding: const EdgeInsets.all(60.0),
//               child: Column(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     SizedBox(height: 70,),
//                     CircleAvatar(backgroundImage: AssetImage("assets/logo/logo.png"),radius: 50,),
//                     SizedBox(height: 30,),
//                     TextFormField(
                      
//                         controller: emailController,
//                         validator: (value){
//                         if (value == null || value.isEmpty) {
//                             return "Please fill this field";
//                         }
                
//                         return null;
                
                    
//               },
//               decoration: const InputDecoration(
                
//                 labelText: 'Email',labelStyle: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
//                 suffixIcon: Icon(Icons.mail_outline,color: Color.fromARGB(255, 162, 0, 255),),
               
//                 enabledBorder: UnderlineInputBorder(      
//                         borderSide: BorderSide(color: Color.fromARGB(255, 162, 0, 255),),   
//                         ),  
//                 focusedBorder: UnderlineInputBorder(
//                         borderSide: BorderSide(color: Color.fromARGB(255, 162, 0, 255),),
//                      ),  
                
//               ),
//                     ),
//                     const SizedBox(height: 16.0),
//                     TextFormField(
//               controller: passwordController,
//               validator: (value) {
      
//                 if (value == null || value.isEmpty) {
//                       return "Please fill this field";
//                     }
                
      
//                   return null;
      
                
                    
                
//               },
//               obscureText: true,
//               decoration: const InputDecoration(
//                 labelText: 'Password',labelStyle: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
//                 suffixIcon: Icon(Icons.remove_red_eye_outlined,color: Color.fromARGB(255, 162, 0, 255),),
//                 enabledBorder: UnderlineInputBorder(      
//                         borderSide: BorderSide(color: Color.fromARGB(255, 162, 0, 255),),   
//                         ),  
//                 focusedBorder: UnderlineInputBorder(
//                         borderSide: BorderSide(color: Color.fromARGB(255, 162, 0, 255),),
//                      ), 
//               ),
//                     ),
//                     const SizedBox(height: 14.0),
      
//               Row(
      
//                 children: [
//                   Checkbox(value: ischecked, onChanged: (bool? value){
//                     setState(() {
//                       ischecked = value;
//                     });
//                   }),
//                   const Text('Keep me signed in',style: TextStyle(color: Colors.white),),
//                   const SizedBox(width: 190,),
//                   TextButton(
//                   onPressed: () {},
//                   child: const Text(
//                   'Forgot Password?',
//                   style: TextStyle(color: Color.fromARGB(255, 162, 0, 255)),
//               ),
//                     ),
//                 ],
      
                
//               ),
//               const SizedBox(height: 40.0),
//               MaterialButton(
//               onPressed: (){
//                   if(_formKey.currentState!.validate()){
//                      Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => HomePage()));
//                   }
               
//               },
//               child: Text('Log in',style: TextStyle(
//                 color: Colors.white,
//                 fontWeight: FontWeight.bold
//               ),),
//               color: Color.fromARGB(255, 176, 5, 255),
              
//               ),
//                     const SizedBox(height: 12.0),
                    
                    
                    
//                     const SizedBox(height: 12.0),
//               OutlinedButton(
//               onPressed: () {
//                 // Implement sign-up functionality
//               },
//               child: const Text('Sign Up'),
//               style: ButtonStyle(
                
//                 side: MaterialStateProperty.all(
//                   const BorderSide(color: Color.fromARGB(255, 162, 0, 255),style: BorderStyle.solid),
                  
//                 ),
//                 foregroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 162, 0, 255)),
//               ),
//               ),
             
//                   ],
//                 ),
//             ),
            
//             ),
//             Stack(
//               children: [
//                 Container(height: double.infinity,width: 935,
//             child: Image.network("https://images.unsplash.com/photo-1492691527719-9d1e07e534b4?q=80&w=2071&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",fit: BoxFit.fill),
//             ),
//             Container(
              
//               child: const Padding(
//                 padding: EdgeInsets.only(top: 400,left: 100),
//                 child: Column(
                
//                   children: [
//                     Padding(
//                       padding: EdgeInsets.only(),
//                       child: Text("Discover\nSomething New",style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 52,
//                         fontWeight: FontWeight.bold
//                       ),
//                       ),
//                     ),
//                     Padding(
//                       padding: EdgeInsets.only(top: 10,bottom: 40),
//                       child: Text("Don't know where to go, let us help\nyou find the best place to\nrediscover yourself and connect\nwith nature",style: TextStyle(
//                         color: Colors.white70,
//                         fontSize: 24
//                       ),),
//                     )
//                   ],
//                 ),
//               ),
//             )
//               ],
//             )
//           ],
//         ),
//       )
//     );
//   }
// }


