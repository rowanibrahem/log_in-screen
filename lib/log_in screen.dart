import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
 var emailController = TextEditingController();
 var passwordController = TextEditingController();

 @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body:
      Padding(
        padding:  EdgeInsets.all(20.0), //this number is standard at all at will make padding to make it in center
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Login',
                style: TextStyle(
                 fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
                ),
                const SizedBox(
                  height: 40.0,
                ),
                TextFormField(
                  controller: emailController,
                  decoration: const InputDecoration(
                    labelText: 'Email Address',
                    prefixIcon: Icon(Icons.email,),
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  onFieldSubmitted: (value){
                    print(value);
                  },
                ),
                const SizedBox(
                  height: 15.0,
                ),
                TextFormField(
                  controller: passwordController,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    prefixIcon: Icon(Icons.lock,),
                    suffixIcon: Icon(Icons.remove_red_eye,),
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.visiblePassword,
                  onFieldSubmitted: (value){
                    print(value);
                  },
                  obscureText: true,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  width: double.infinity,
                  color: Colors.blue,
                  child:  MaterialButton(
                    onPressed: ()
                    {
                    print(emailController.text);
                    print(passwordController.text);
                    },
                    child: const Text('LOGIN',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                    Text('Don\'t have an account?',
                    ),
                    TextButton(onPressed: (){
                    },
                        child: Text(
                          'Register Now ',
                        ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );

  }
}
