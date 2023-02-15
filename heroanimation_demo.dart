import 'package:flutter/material.dart';
import 'package:hero/detail_page.dart';

class HeroanimationDemo extends StatefulWidget {
  const HeroanimationDemo({Key? key}) : super(key: key);

  @override
  State<HeroanimationDemo> createState() => _HeroanimationDemoState();
}

class _HeroanimationDemoState extends State<HeroanimationDemo> {
  var imagelist=[
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1RNHShcFBG7pxcW_RVqU2N9D7lx-9e-0kqg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIfVQ9V33rRB5vObL2fprpO1MKSmHuIimeSg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUhxfioR9-9k3BSqL8shnMj5FJi8wPdst-lJxvaON6N-gJHmBGLldCM_9Ynl5ig9JIGDA&usqp=CAU",
  ];

  // var imagemap={
  //   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1RNHShcFBG7pxcW_RVqU2N9D7lx-9e-0kqg&usqp=CAU",
  //   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIfVQ9V33rRB5vObL2fprpO1MKSmHuIimeSg&usqp=CAU",
  //   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUhxfioR9-9k3BSqL8shnMj5FJi8wPdst-lJxvaON6N-gJHmBGLldCM_9Ynl5ig9JIGDA&usqp=CAU",
  // };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hero Animation"),
      ),

      body: Container(
        child: Center(
          child:ListView.builder(
            // scrollDirection: Axis.horizontal,
            itemCount: imagelist.length,
              itemBuilder: (context,index){
              return  InkWell(
                  onTap: (){
                    // Navigator.push(context,MaterialPageRoute(builder: (context)=>DetailPage()));
                    Navigator.pushNamed(context,'/detail',arguments: [index,imagelist[index]]);
                    // Navigator.pushNamed(context,'/detail',arguments: [index,'imagemap${index}']);
                  },
                  child: Hero(
                    transitionOnUserGestures: true,
                    tag: "Hero${index}",
                    child: Image.network(imagelist[index],height: 100,width: 100,),
                    // child: Image.network('imagemap${index}',height: 100,width: 100,),
                  ),

                );
              },
            ),



        ),
      ),
    );
  }
}



