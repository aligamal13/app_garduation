import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pro_graduation/helper/api/dio_helper.dart';
import 'package:pro_graduation/helper/api/response_model.dart';
import 'package:pro_graduation/helper/components.dart';
import 'package:pro_graduation/helper/local_cash_helper/cash_hlper.dart';
import 'package:pro_graduation/modeils/login/login_response.dart';
import 'package:pro_graduation/modules/bottom/bottom_navgtion.dart';

class ProviderRegster extends ChangeNotifier{


  var formkey=GlobalKey<FormState>();

  TextEditingController passwordconteroler=TextEditingController();
  TextEditingController nameconteroler=TextEditingController();
  TextEditingController phoneConteroler=TextEditingController();
  TextEditingController counterCodeConteroler=TextEditingController();

  TextEditingController emailconteroler=TextEditingController();

//loadin login

  bool _loading=false;
  bool get loading=>_loading;

  setLoqding(bool vaalue){
    _loading=vaalue;
    notifyListeners();
  }

  void regstier(name,email,phone,counterCode,password,context)async{
    setLoqding(true);
    try{
      ResponseModel response = await DioHelper2.postData2(url: 'register',data: {
        'name':name,
        'email':email,
        'phone':phone,
        'counterCode':counterCode,
        'password':password,
      });
      if(response.statusCode==200){
        LoginResponse responseModel = LoginResponse.fromJson(jsonDecode(response.data) as Map<String,dynamic>);
        Cash_Hlper.saveString(key: 'token', value: responseModel.fbToken!);

        print('error$responseModel');

        setLoqding(false);
        showToast(textcolor: Colors.white,text:  'dane', color: Colors.lightGreen);
        navgiToAndFinsh(context, BottomNavgtion());

      }else{
        setLoqding(false);
        showToast(textcolor: Colors.white,text:  'error', color: Colors.red);
      }
    }catch(e){
      print('ErrorAli$e');
      setLoqding(false);
    }

  }



  bool iseye=false;

  checkeye(eyepass){
    iseye=!eyepass;
    notifyListeners();
  }
}


