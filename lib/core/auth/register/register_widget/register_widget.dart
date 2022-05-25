// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_print, unrelated_type_equality_checks, unused_local_variable, prefer_const_constructors_in_immutables



import 'package:fashion_style/core/auth/login/login_form_page/login_page.dart';
import 'package:fashion_style/core/form_fields/defaulte_form_field.dart';
import 'package:fashion_style/core/router/string_route.dart';
import 'package:fashion_style/core/theme/colors/colors_theme.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RegisterWidget extends StatefulWidget {

  RegisterWidget({Key? key}) : super(key: key);

  @override
  State<RegisterWidget> createState() => _RegisterWidgetState();
}

class _RegisterWidgetState extends State<RegisterWidget> {
  final formkye = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final phonecontroller = TextEditingController();
  final passwordController = TextEditingController();
  final confirmpassword = TextEditingController();
  UserCredential? credential;
  final user = FirebaseAuth.instance.currentUser;
  
 /*  get emailAddress => 'asd@gmail.com';
  
  get password => 'asdasd'; */

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    confirmpassword.dispose();
    super.dispose();
  }
 /* void signUp()async{
  await FirebaseAuth.instance.createUserWithEmailAndPassword(
    email: emailController.text.trim(), 
    password: passwordController.text.trim(),
  );
 } */

  void createNewEmail()async{
    try {
      credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email:   emailController.text.trim(), 
        password: passwordController.text.trim(),
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e.toString());
    }
  }
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkye ,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Email address:'),
          SizedBox(
            height: 2.5,  
          ),
          DefaulteFormField.field(
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
            validate: ( value){
              if(value!.isEmpty)
              {
                return 'Please Enter your Email';
              }else if(!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)){
                return 'Please a valid Email';
              }
              return null;
            },
          ),
         
           SizedBox(
            height: 10,
          ),
          Text('Password:'),
            SizedBox(
            height: 2.5,  
          ),
          DefaulteFormField.field(
            controller: passwordController,
            keyboardType: TextInputType.visiblePassword,
            obscure: true,
            validate: (value){
              if(value == null){
                return 'Confirm Password';
              }else if(value.length < 6){
                return 'Confirm Password does  not match' ;
              }
              /* else if(passwordController.text != confirmpassword.text){
                return 'Confirm Pas sword does not match';
              } else if(value.length < 6){
                return 'Confirm Password does  not match' ;
              } */
              return null;
            }
          ),
          SizedBox(
            height: 10,
          ),
          Text('Confirm  Password:'),
            SizedBox(
            height: 2.5,  
          ),
          /* DefaulteFormField.field(
            controller: confirmpassword,
            obscure: true,
            keyboardType: TextInputType.visiblePassword,
            validate: (value){
              if(value == null){
                return 'Confirm Password';
              }else if(confirmpassword.text != passwordController.text){
                return 'Confirm Password does not match';
              } else if(value.length < 6){
                return 'Confirm Password does not match' ;
              }
              return null;
            }
          ), */
          SizedBox(
            height: 10,
          ),
          GestureDetector(
           onTap: () => Navigator.pushNamed(context, profile), 
           //createNewEmail(),
            child: DefaulteFormField.container(
              child: Center(
                child: Text(
                  'Sign UP',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Text(
                'Alredy Have an account ?',
                style: TextStyle(
                  color: ColorsTheme.gray,
                  fontSize: 13,
                ),
              ),
              TextButton(
                onPressed:(){
                  Navigator.push(
                    context, MaterialPageRoute(
                      builder: (context)=> LoginPage(),
                    ),
                  );
                },
                child: Text(
                  'Login ',
                  style: TextStyle(
                    color: Color.fromARGB(255, 146, 227, 169),
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
/*   void createNewEmail()async{
    try {
      credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email:  "asd@gmail.com",
        password: "asdasd",
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e.toString());
    }
      print('user is. '+ credential.toString());
  } */

/*   void changePassword()async{
    await FirebaseAuth.instance.setLanguageCode('eg');
    await user?.sendEmailVerification();
  } */
}



/*  onTap: ()async{
                  try {
                    credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
                      email: emailAddress,
                      password: password,
                    );
                  } on FirebaseAuthException catch (e) {
                    if (e.code == 'weak-password') {
                      print('The password provided is too weak.');
                    } else if (e.code == 'email-already-in-use') {
                      print('The account already exists for that email.');
                    }
                  } catch (e) {
                    print(e);
                  }
                 /*  credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
                    /* email: emailController.text.trim(),
                    password: passwordController.text.trim(), */
                    email: 'asdadsa@gmail.com',
                    password: '34343444',
                  /*). then((value) => Navigator.pushNamedAndRemoveUntil(
                      context,   
                      '/layout',  
                      (route) => false
                    ), */
                  );
                } on FirebaseAuthException catch (e) {
                  if (e.code == 'weak-password') {
                  } else if (e.code == 'email-already-in-use') {
                  } else if (e.code == 'user-not-found') {
                  } else if (e.code == 'wrong-password') {
                  }
                  print(e.code) ; //Add this line to see other firebase exceptions.
                } catch (e) {
                  print(e);
                } */
              if(formkye.currentState!.validate()){
               
              /*  if(formkye.currentState!.validate()){
                 Navigator.pushNamedAndRemoveUntil(
                  context,      email: "emailAddressewrwewerer@gmail.com",
                  password: "22334432234"   
                  '/layout',  
                  (route) => false
                );
              } */
              print('Login');
             }
            }, */