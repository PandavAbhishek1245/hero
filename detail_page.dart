import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int? index;
  String? image;

  @override
  void didChangeDependencies(){
    var argument=ModalRoute.of(context)!.settings.arguments! as List;
    // var argument=ModalRoute.of(context)!.settings.arguments! as Map;
    index=argument[0];
     image=argument[1];
    // image=argument[2];
    super.didChangeDependencies();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Details"),
      ),
      body: Container(
        child: Center(
          child: Hero(
            transitionOnUserGestures: true,
            tag: "Hero${index.toString()}",
            child: Image.network(image!),
          ),
        ),
      ),
    );
  }
}
