import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pro_graduation/helper/components.dart';
import 'package:pro_graduation/modules/auth/login/login_screen.dart';
import 'package:pro_graduation/provider/provider_auth/provider_regstier/provider_regster.dart';
import 'package:pro_graduation/recources/color_managr.dart';

import 'package:provider/provider.dart';

class RegsterScreen extends StatefulWidget {
  @override
  State<RegsterScreen> createState() => _RegsterScreenState();
}

class _RegsterScreenState extends State<RegsterScreen> {



  @override
  Widget build(BuildContext context) {
    ProviderRegster providerLogin=Provider.of<ProviderRegster>(context);
    return Scaffold(
      body: Form(
        key: providerLogin.formkey,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [

            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 11,vertical: 55),
                    child: Image.asset('img/signup.png'),


                  ),

                  //name
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: defultTextFormFild(context,
                      controller: providerLogin.nameconteroler,
                      type: TextInputType.name,
                      validator: (value){
                        if(value.isEmpty){
                          return 'pleas name';
                        }
                      },
                      labelText: 'name',
                      prefixIcon: Icon(Icons.drive_file_rename_outline),

                    ),
                  ),
                  //email
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: defultTextFormFild(context,
                      controller: providerLogin.emailconteroler,
                      type: TextInputType.emailAddress,
                      validator: (value){
                        if(value.isEmpty){
                          return 'pleas meeil';
                        }
                      },
                      labelText: 'Email',
                      prefixIcon: Icon(Icons.email),

                    ),
                  ),
                  //phone
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: defultTextFormFild(context,
                      controller: providerLogin.phoneConteroler,
                      type: TextInputType.phone,
                      validator: (value){
                        if(value.isEmpty){
                          return 'pleas phone';
                        }
                      },
                      labelText: 'phone',
                      prefixIcon: Icon(Icons.phone),

                    ),
                  ),
                  //countercode
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: defultTextFormFild(context,
                      controller: providerLogin.counterCodeConteroler,
                      type: TextInputType.name,
                      validator: (value){
                        if(value.isEmpty){
                          return 'pleas eg';
                        }
                      },
                      labelText: 'code',
                      prefixIcon: Icon(Icons.email),

                    ),
                  ),
                  //passowerd
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: defultTextFormFild(context,
                      controller: providerLogin.passwordconteroler,
                      type: TextInputType.visiblePassword,
                      obscureText: !providerLogin.iseye,
                      suffixIcon: IconButton(onPressed: ()
                      {
                        setState(() {
                         providerLogin.checkeye(providerLogin.iseye);
                        });
                      },
                          icon:providerLogin.iseye?Icon(Icons.remove_red_eye_outlined)
                              :Icon(Icons.visibility_off_sharp)),
                      validator: (value){
                        if(value.isEmpty){
                          return 'pleas passowerd';
                        }
                      },
                      labelText: 'passowerd',
                      prefixIcon: Icon(Icons.lock),

                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),color: Colors.grey.withOpacity(.3),
                            ),
                            child: IconButton(onPressed: ()
                            {
                              setState(() {

                               providerLogin.checkeye(providerLogin.iseye);

                              });
                            },
                              icon:providerLogin.iseye? Icon(Icons.done,color: Colors.green,size:30,):
                              Icon(Icons.close,color: Colors.green,size:30,),
                            )),SizedBox(width: 4,),
                        Text(
                            "Remember me",style: TextStyle(
                            color: Colors.black.withOpacity(.7),
                            fontSize: 14,
                            fontWeight: FontWeight.bold
                        )),Spacer(),
                        defultTextButton(onPressed: (){


                        }, text:
                        " Forgot Password?",
                          color: Colors.black.withOpacity(.7),
                          appsize: 14,

                        )

                      ],
                    ),

                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:providerLogin.loading?Center(child: CircularProgressIndicator()): defultButton(
                        color: ColorManager.gryn,
                        width: double.infinity,
                        onPressed: (){
                          if(providerLogin.formkey.currentState!.validate()){
                            providerLogin.regstier(

                                providerLogin.nameconteroler.text,
                                providerLogin.emailconteroler.text,
                                providerLogin.phoneConteroler.text,
                                providerLogin.counterCodeConteroler.text,
                                providerLogin.passwordconteroler.text,
                                context);


                          }

                        },
                        text: 'Login',
                        textcolor: ColorManager.white,
                        appsize: 22,
                        fontWeight: FontWeight.bold
                    ),
                  ),

                  SizedBox(height: 200,),

                ],
              ),

            ),
            Container(
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft:Radius.circular(22),topRight: Radius.circular(22)),
                color: Colors.green,
              ),
              child: Row(             mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Text( "have an Account?",style:TextStyle(fontSize: 15,color: Colors.white)),
                  defultTextButton(onPressed: (){

                    navgiToAndFinsh(context,LoginScreen());

                  }, text: " Login",color: Colors.white,appsize: 22,)

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
