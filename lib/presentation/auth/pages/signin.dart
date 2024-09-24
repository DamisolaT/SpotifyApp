
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_app/common/widgets/appbar/app_bar.dart';
import 'package:spotify_app/common/widgets/botton/basic_app_button.dart';
import 'package:spotify_app/core/configs/assets/app_vectors.dart';
import 'package:spotify_app/presentation/auth/pages/signup.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: _signupText(context),
      appBar: BasicAppBar(
        title: SvgPicture.asset(
          AppVectors.logo,
          height: 40,
          width: 40,
          
        ),
      ),
      body:  Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 50,
          horizontal: 30
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
              _registerText(),
              const SizedBox(height: 50,),
              
               _emailField(context),
               const SizedBox(height: 20,),
               _passwordField(context),
               const SizedBox(height: 20,),
               BasicAppButton(
                onPressed:(){
                   Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>  SignupPage(),
                      ),
                    );
                }, 
                title: "Sign In")
          ],
        ),
      ),
    );
  }

  Widget _registerText(){
    return const Text(
      "Sign In",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 25
      ),
      textAlign: TextAlign.center,
    );
  }


  Widget _emailField(BuildContext context){
    return TextField(
      decoration: const InputDecoration(
        hintText: "Enter email"
      ).applyDefaults(Theme.of(context).inputDecorationTheme)
    );
  }

  Widget _passwordField(BuildContext context){
    return TextField(
      decoration: const InputDecoration(
        hintText: "Enter password"
      ).applyDefaults(Theme.of(context).inputDecorationTheme)
    );
  }

  Widget _signupText(BuildContext context){
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Not A Memeber?",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 14
          ),
          ),
          TextButton(
            onPressed: (){}, 
            child: const Text("Register Now"))
        ],
        ),
    );
  }
}