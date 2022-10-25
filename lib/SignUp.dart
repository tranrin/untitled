import 'package:flutter/material.dart';
class SignUp extends StatelessWidget{


  SignUp({Key? key}):super(key: key);

  final _formKey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context){



    return
      Scaffold(
        body: SafeArea(




          child:  Form(
              key:_formKey,// các trạng thái lưu vào key
              child:Column(

                mainAxisAlignment: MainAxisAlignment.spaceAround,

                children: [



                  Image.asset("assets/images/1323550.jpg",width: 400,height: 400,)
                  ,
              TextFormField(

                validator:(value){

                  if(value==null || value.isEmpty)
                    return "nhap so dien thoai";
                  else if(value.length<5)
                    return "so dien thoai qua ngan";
                  return null;
                },
                decoration: InputDecoration(

                    labelText: "so dien thoai",
                    hintText: "tran ngoc rin",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                    prefixIcon: Icon(Icons.phone)
                ),
              ),
                  TextFormField(

                    validator:(value){

                      if(value==null || value.isEmpty)
                        return "nhap ten dang nhap";
                      else if(value.length<5)
                        return"ten dang nhap qua ngan";
                      return null;
                    },
                    decoration: InputDecoration(

                        labelText: "nhap vao ten cua ban",
                        hintText: "tran ngoc rin",
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                        prefixIcon: Icon(Icons.person)
                    ),
                  ),
                  TextFormField(

                    obscureText: true,
                    validator:(value){
                      if(value==null || value.isEmpty)
                        return "nhap mat khau";
                      else if(value.length<5)
                        return "mat khau chi la ri";
                      return null;
                    },
                    decoration: InputDecoration(
                        labelText: "nhap vao mat khau",
                        hintText: "12345",
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                        prefixIcon: Icon(Icons.key)
                    ),
                  ),
                  ElevatedButton(onPressed: (){
                    if(_formKey.currentState!.validate()){
                        Navigator.of(context).pushNamed("/Login");
                    }
                    else{
                    }

                  },child: Text("submit"),)

                ],
              )
          ),



        ),


      );


  }



}

