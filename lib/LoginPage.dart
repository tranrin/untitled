import 'dart:convert';
import 'dart:developer';
import 'package:path/path.dart' as Path;


import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:untitled/model/Account.dart';

import 'HomePage.dart';

class LoginPage extends StatelessWidget {


  LoginPage({Key? key}) :super(key: key);

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    String account = 'tranngocrin';
    String password = 'rintran';
    final acController = TextEditingController();
    final psController = TextEditingController();


    return
      Scaffold(
        body: SafeArea(


          child: Form(
              key: _formKey, // các trạng thái lưu vào key
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(
                    "assets/images/10x-featured-social-media-image-size.png",
                    width: 400, height: 400,)
                  ,

                  TextFormField(
                    controller: acController,
                    validator: (value) {
                      if (value == null || value.isEmpty)
                        return "nhap ten dang nhap";
                      else if (value.length < 5)
                        return "ten dang nhap qua ngan";
                      return null;
                    },
                    decoration: InputDecoration(

                        labelText: "nhap vao ten cua ban",
                        hintText: "tran ngoc rin",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        prefixIcon: Icon(Icons.person)
                    ),
                  ),
                  TextFormField(
                    controller: psController,
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty)
                        return "nhap mat khau";
                      else if (value.length < 5)
                        return "mat khau chi la ri";
                      return null;
                    },
                    decoration: InputDecoration(
                        labelText: "nhap vao mat khau",
                        hintText: "12345",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        prefixIcon: Icon(Icons.key)
                    ),
                  ),

                  ElevatedButton(onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      print('object');
                      fetchAccount(acController.text, psController.text,context).toString();
                      buildDialogExample(context);
                    }
                    else {


                    }
                  }
                    , child: Text("Log In"),),
                  ElevatedButton(onPressed: () {
                    Navigator.of(context).pushNamed("/signup");
                  }, child: Text("Sign up"),),

                ],
              )
          ),


        ),


      );
  }

  buildDialogExample(BuildContext context) {
    return TextButton(
      onPressed: () =>
          showDialog<String>(
            context: context,
            builder: (BuildContext context) =>
                AlertDialog(
                  title: const Text('Alert'),
                  content: const Text('Bạn nhập sai mật khẩu rồi'),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'Cancel'),
                      child: const Text('Cancel'),
                    ),
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'OK'),
                      child: const Text('OK'),
                    ),
                  ],
                ),
          ),
      child: const Text('Show Dialog'),
    );
  }
}
Future<String> fetchAccount (String acc, String pass,BuildContext context)  async {

  try{
    print('$acc,$pass');

    Response response = await post(
        Uri.parse('https://fakestoreapi.com/auth/login'),
        body: {
          'username' : acc,
          'password' : pass
        }
    );

    if(response.statusCode == 200){

      var data = jsonDecode(response.body.toString());
      print(data['token']);
      print('Login successfully');
      await Future.delayed(Duration(seconds: 3)).then((value) {

        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) {
              return HomePage();
            },
          ),
        );
      });

      return 'true';

    }else {
      print('failed');
      return  'false';
    }
  }catch(e){
    print(e.toString());
  }
  return  'false';
}

