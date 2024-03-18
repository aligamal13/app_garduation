
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pro_graduation/helper/components.dart';
import 'package:pro_graduation/modules/auth/regster/regster_screen.dart';
import 'package:pro_graduation/provider/provider_auth/prvider_login/provider_login.dart';
import 'package:pro_graduation/recources/color_managr.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var formkey=GlobalKey<FormState>();
  bool ischeck=true;
  TextEditingController passwordconteroler=TextEditingController();


  TextEditingController emailconteroler=TextEditingController();


  @override
  Widget build(BuildContext context) {
    ProviderLogin providerLogin=Provider.of<ProviderLogin>(context);
    return Scaffold(
      body: Form(
        key: formkey,
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
                    child: Image.asset('img/splash.jpg'),


                  ),


                  //email
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: defultTextFormFild(context,

                      controller: emailconteroler,
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

                  //passowerd
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: defultTextFormFild(context,
                      obscureText: !ischeck,
                      controller: passwordconteroler,
                      type: TextInputType.visiblePassword,
                      suffixIcon: IconButton(onPressed: ()
                      {
                        setState(() {
                          ischeck=!ischeck;
                        });
                      },
                          icon:ischeck?Icon(Icons.remove_red_eye_outlined) :Icon(Icons.visibility_off_sharp)),
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

                                ischeck=!ischeck;

                              });
                            },
                              icon:ischeck? Icon(Icons.done,color: Colors.green,size:30,):
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
                          if(formkey.currentState!.validate()){
                            providerLogin.login(

                                emailconteroler.text,
                                passwordconteroler.text,
                                context);


                          }

                        },
                        text: 'Login',
                        textcolor: ColorManager.white,
                        appsize: 22,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 150,),

                  Container(
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft:Radius.circular(22),topRight: Radius.circular(22)),
                      color: Colors.green,
                    ),
                    child: Row(             mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        Text( "Don't have an Account?",style:TextStyle(fontSize: 15,color: Colors.white)),
                        defultTextButton(onPressed: (){
                          navgiToAndFinsh(context, RegsterScreen());


                        }, text: " Sign up",color: Colors.white,appsize: 22,)

                      ],
                    ),
                  )


                ],
              ),

            ),
          ],
        ),
      ),
    );
  }
}
