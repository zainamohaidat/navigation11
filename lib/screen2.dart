import 'package:flutter/material.dart';
import 'package:navigation11/screen1.dart';
import 'const_Sc.dart';
import 'screen1.dart';
import 'screen3.dart';
class screen2 extends StatefulWidget{

  @override
  State<StatefulWidget>createState(){
    return buildClass();
  }
}
class buildClass extends State<screen2>{


  final _formkey=GlobalKey<FormState>();


  @override
  Widget build(BuildContext context){
    bool emaileValidation( String emaile){
      String pattern=r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
      return RegExp(pattern).hasMatch(emaile);
    }
    bool PasswordValidator(String pass){
      String pass1=r'^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$';
      return RegExp(pass1).hasMatch(pass);
    }
    return Scaffold(
      appBar: AppBar(
        // title:  ListView(
        //   children: [
        //     ListTile(
        //       title: Text("Back"),
        //       leading: InkWell(
        //         onTap: () {
        //           // هنا يمكنك إضافة الكود الذي سيقوم بعملية الرجوع إلى الصفحة السابقة
        //           // مثلاً:
        //           Navigator.of(context).pushNamed(route1);
        //         },
        //         child: Icon(Icons.arrow_back,size: 30,),
        //       ),
        //     ),
        //     // ... باقي عناصر القائمة
        //   ],
        // ),
      ),

    body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.network("https://thumbs.dreamstime.com/z/checkmark-smartphone-screen-green-confirmation-notification-success-finish-app-update-purchase-payment-tick-mobile-phone-126290664.jpg?w=768",)
            //Image.network("data:image/jpeg;base64,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",height: 250,width: 450,),
            ,SizedBox(height: 50,),
            Text("Login",style: TextStyle(color: Colors.green,
                fontSize: 50),
        
        
            ),
            SizedBox(height: 10,),
            SingleChildScrollView(
              child: Form(
                key: _formkey,
                child: Column(
                  children: [
                    TextFormField(
                      onChanged: (value){
                            setState(() {
                              null;
                            });
                      },
                      validator: (txt){
                        if(txt!.isEmpty){
                          return "please enter emaile";
                        }
                        else if(!(emaileValidation(txt))){
                          return "this emaile is not valid";

                        }

                        return null;
                      },
                      decoration: decoration(txtHint: "Ahmad@gmaile.com",txt: "Emaile"),
                    ),
                    SizedBox(height: 10,),
                    TextFormField(
                      obscureText: true,

                      onChanged: (value){
                        setState(() {

                        });

                      },
                      decoration: decoration(txtHint: "as23%A#m",txt: "Password"),
                      validator: (txtHint) {
                        if (txtHint!.isEmpty) {
                          return "please enter password";
                        }
                        else if(txtHint.length<8){
                          return "please enter 8 character or more ";
                        }
                        else if(!(PasswordValidator(txtHint))){
                          return "Password not valid";

                        }
      
                        return null;
                      }
      
                    ),
                    SizedBox(height: 30,),
                    // ... other form fields
                    ElevatedButton(
      
                      onPressed: () {
                        if(_formkey.currentState!.validate()) {
                          Navigator.of(context).pushNamed(route44);
                        }
                        else{
                          print( "error, please try again");
                        }
                      },
                      child: Text("Login",style: TextStyle(color: Colors.white),),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        minimumSize: Size(350, 50),
                      ),
        
                    ),


                  ],
                ),
              ),
            ),]
        ),
      ),
    ),

    );


  }
  InputDecoration decoration( { required String txtHint, required String txt}){
    return InputDecoration(


      enabledBorder: OutlineInputBorder(

        borderRadius: BorderRadius.circular(100),

        borderSide: BorderSide(
          color: Colors.white,
          width: 50,

        ),


      ),
      label: Text(txt),

      labelStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),
      floatingLabelBehavior:  FloatingLabelBehavior.never,
      focusedBorder: OutlineInputBorder(

        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide(
          color: Colors.black,

      )
      )
      ,
      hintText: txtHint,
      hintStyle: TextStyle(color: Colors.green,),
    );
  }
}