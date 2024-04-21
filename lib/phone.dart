import 'package:flutter/material.dart';

class MyPhone extends StatefulWidget {
  const MyPhone({super.key});

  @override
  State<MyPhone> createState() => _MyPhoneState();
}

class _MyPhoneState extends State<MyPhone> {

  TextEditingController countryCode = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 25,right: 25),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('lib/assests/phone_auth.png',width: 170,height: 170,),
            SizedBox(height: 25,),
            Container(
              height: 55,
              decoration: BoxDecoration(
                border: Border.all(width: 1,color: Colors.grey),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                children: [
                  SizedBox(width: 40,child: TextField(
                    controller: countryCode,
                    decoration: InputDecoration(
                      border: InputBorder.none
                    ),
                  ))
                  ,SizedBox(width: 10,),Text('|',style: TextStyle(fontSize: 22),),
                  SizedBox(width: 10 ,),
                  Expanded(child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                      hintText: 'Phone'
                    ),
                  )),

                ],
              ),
            ),
            SizedBox(height: 15,),
            Text('Phone Verification',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Text('We need to register your phone before getting started !!',
                style:TextStyle(fontSize: 15,),textAlign: TextAlign.center,
              ),
              SizedBox(height: 20,),
              SizedBox(
                height: 45,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green.shade600, // background color
                    foregroundColor: Colors.white, // text color
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  ),
                  child: Text('Send Code'),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
