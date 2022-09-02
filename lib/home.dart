import 'package:flutter/material.dart';
import 'dart:math';
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomeSTF();
  }
}

class HomeSTF extends StatefulWidget {
  const HomeSTF({Key? key}) : super(key: key);

  @override
  State<HomeSTF> createState() => _HomeSTFState();
}

class _HomeSTFState extends State<HomeSTF> {
  @override
  Random random= Random();
  int x=0;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Lottery App',
        textAlign: TextAlign.center,
        style: TextStyle(

        ),
        ),
      ),
      body: SafeArea(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment:CrossAxisAlignment.center,
            children: [
              Center(
                child: Text('Lottery winning number is 4'),
              ),
              SizedBox(height: 20,),
              Container(
                height: 250,
                width: 300,

                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(.2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: x==4 ?
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.done,color: Colors.green,size: 30,),
                      SizedBox(height: 20,),
                      Text('Congratulations you won the Lottery!\n your number is $x ',textAlign: TextAlign.center,),
                    ],
                  )
                      :
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.warning,color: Colors.red,size: 30,),
                      SizedBox(height: 20,),
                      Text('Better Luck for next time  your number is $x \n try again.',textAlign: TextAlign.center,),
                    ],
                  ),
                ),
              ),
            ],
          ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        x = random.nextInt(5);
        print(x);
        setState((){});

        },
        backgroundColor: Colors.teal,
      child:Icon(Icons.refresh),
      ),
    );
  }
}

