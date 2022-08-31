import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../widgets/buttons.dart';
import '../../widgets/default_button.dart';
import '../../widgets/navigation.dart';
import '../home/home_screen.dart';
import '../posts/posts_list_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

var emailController = TextEditingController();
var passwordController = TextEditingController();
var formKey = GlobalKey<FormState>();
bool isPassword = true;
IconData showPassword = Icons.visibility_off;
IconData hidePassword = Icons.visibility;

class _LoginScreenState extends State<LoginScreen> {
  String email = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                const SizedBox(
                  height: 70.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Image(
                      image: AssetImage('assets/images/loginVector.png'),
                      width: 200.0,
                      height: 200.0,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 60.0,
                ),
                TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide: const BorderSide(
                        width: 0.8,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide: const BorderSide(
                        width: 0.8,
                        color: Colors.blue,
                      ),
                    ),
                    labelText: 'Email',
                    prefixIcon: const Icon(
                      Icons.mail,
                    ),
                  ),
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return 'Enter your Email Address';
                    }
                    return null;
                  },
                  
                  onChanged: (value) {
                    print(value);
                    email = value;
                  },
                ),
                const SizedBox(
                  height: 13.0,
                ),
                TextFormField(
                  controller: passwordController,
                  obscureText: isPassword ? true : false,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide: const BorderSide(
                        width: 0.8,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide: const BorderSide(
                        width: 0.8,
                        color: Colors.blue,
                      ),
                    ),
                    labelText: 'Password',
                    prefixIcon: const Icon(
                      Icons.password,
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isPassword = !isPassword;
                        });
                      },
                      icon: Icon(
                        isPassword ? hidePassword : showPassword,
                      ),
                    ),
                  ),
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return 'Enter your Password Address';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 25.0,
                ),
            
                MyButton(
                  label: 'Login',
                  isUpper: true,
                  onTap: () async {
                    final prefs = await SharedPreferences.getInstance();
                    prefs.setString("email", email);
                    if (formKey.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ),
                      );
                    }
                  },
                ),
                const SizedBox(
                  height: 5.0,
                ),
                MyButton(
                  label: 'Show Api Data',
                  isUpper: true,
                  onTap: ()  {
                    navigateTo(
                      context,
                        const PostsList(),
                    );
                  },
                ),

                const SizedBox(
                  height: 10.0,
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Forget Password? No yawa. Tap me',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15.0,
                      letterSpacing: 1.0,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40.0, // set it to 50
                ),
                Container(
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: MaterialButton(
                    onPressed: () {},
                    child: const Text(
                      'No Account? Sign Up',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
