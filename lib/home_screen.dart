import 'package:flutter/material.dart';

class Home_screen extends StatefulWidget {
  const Home_screen({super.key});

  @override
  State<Home_screen> createState() => _Home_screenState();

}

class _Home_screenState extends State<Home_screen> {

TextEditingController emailControll = new TextEditingController();
TextEditingController PasswordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.blueGrey,

        leading: Icon(Icons.menu , color: Colors.white, size: 30,),
        title: Text('Login Form' , style: TextStyle(
          color: Colors.white
        ),),
        centerTitle: true,
      ),
      body: Container(

        child: Container(


          // color: Color.fromARGB(232, 196, 209),
           color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,


            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.center,


                children: [

                  Container(
                    padding: EdgeInsets.all(16.0),
                    child: Text("Email:   " , style: TextStyle(

                    ),),
                  ),
                  Container(
                    width: 200,
                    child: TextFormField(

                      controller: emailControll,
                    ),
                  )
                ],
              ) ,

              Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Container(
                      padding: EdgeInsets.all(16.0),

                      child: Text("Password :   ")),
                  Container(
                    width: 200,
                    child: TextFormField(
                      obscureText: true,
                      controller: PasswordController,
                    ),
                  )
                ],

              ),


              MaterialButton(
                padding: EdgeInsets.all(50.0),



                child: Text("Login" , style: TextStyle(
                    backgroundColor: Colors.blueGrey,

                    color: Colors.white,
                    fontSize: 30,
                  ),),
                  onPressed: (){

                    print(emailControll.text);
                    print(PasswordController.text);


                  },


              )


            ],
          ),
        ),
        ),
    );
  }


}
