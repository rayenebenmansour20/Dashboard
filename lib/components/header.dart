import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

const double defaultPadding = 16.0;

class Header extends StatelessWidget {
  const Header({
    super.key,
  });
  

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child:SearchField()),
          //notificationicon(),
          ticketicon(),
          //profilicon(),
          //Profilcard(),
      ],
    
    );
  }
}

class Profilcard extends StatelessWidget {
  const Profilcard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: defaultPadding),
      padding:const EdgeInsets.symmetric(horizontal: defaultPadding,vertical: defaultPadding/2),
      decoration: BoxDecoration(color:Colors.white,borderRadius: const BorderRadius.all(Radius.circular(10)),
      border: Border.all(color:Colors.white10)
      ), 
      child: Row(children: [
        Image.asset("./assets/images/blackman.png",height: 46,),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal:defaultPadding/2),
          child: Text("Rayeneben",
          style:TextStyle(color:Colors.blue)), 
        ),
        const Icon(Icons.keyboard_arrow_down,color:Colors.blue)
      ],),
    );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(color: Colors.black),
      decoration:InputDecoration(
      hintText: "Search",  
      hintStyle: const TextStyle(color:Colors.blue),
      fillColor: const Color.fromARGB(255, 222, 216, 216) ,
      filled:true,
      border:const OutlineInputBorder(borderSide: BorderSide.none,borderRadius: BorderRadius.all(Radius.circular(10))),
    suffixIcon:InkWell(
       onTap:(){} ,
        child: Container(
        padding: const EdgeInsets.all(defaultPadding*0.75),
        margin:const EdgeInsets.symmetric(horizontal: defaultPadding/2),
      decoration: const BoxDecoration(
        color:Color.fromARGB(255, 18, 82, 134),
        borderRadius:BorderRadius.all(Radius.circular(10)),
        ),
      child:SvgPicture.asset("./assets/icons/Search.svg")
        ),
    ),
      ),
    );
  }
}
/*class profilicon extends StatelessWidget{
  const profilicon({
    super.key,
    int counter =0,
  });


  @override
  Widget build(BuildContext context){
    return Row(
      children: <Widget>[
      IconButton(
        onPressed: (){
          debugPrint('Notificationbar');
        } ,
        icon:Stack(
          children:<Widget>[
            CircleAvatar(
            radius:100,  
            backgroundColor:Colors.white,
            child:Image.asset("assets/images/rayeneben.png",)),
            Positioned(
              left:16,
              bottom: 15,
              child: Icon(Icons.brightness_1 ,
              color:Colors.red,
              size:9))
          ]
        ),), 


      ],
    );
  }
}*/

// ignore: camel_case_types
class ticketicon extends StatelessWidget{
  const ticketicon({
    super.key,
    int counter =0,
  });


  @override
  Widget build(BuildContext context){
    return Row(
      children:<Widget>[
      IconButton(
        onPressed: (){
          debugPrint('Notificationbar');
        } ,
        icon:const Stack(
          children:[
            CircleAvatar(
            radius:100,  
            backgroundColor:Color.fromARGB(255, 222, 216, 216),
            child:Icon(Icons.notifications,
            color:Colors.black,)),
            Positioned(
              left:16,
              bottom: 15,
              child: Icon(Icons.brightness_1 ,
              color:Colors.red,
              size:9)),
          ]
        ),),
         IconButton(
        onPressed: (){
          debugPrint('Notificationbar');
        } ,
        icon:const Stack(
          children:[
            CircleAvatar(
            radius:50,  
            backgroundColor:Color.fromARGB(255, 222, 216, 216),
            child:Icon(Icons.airplane_ticket_outlined,
            color:Colors.black,
           )),
            Positioned(
              left:16,
              bottom: 15,
              child: Icon(Icons.brightness_1 ,
              color:Colors.red,
              size:9)),
          ]
        ),),
         IconButton(
        onPressed: (){
          debugPrint('Notificationbar');
        } ,
        icon:const Stack(
          children:[
            CircleAvatar(
            radius:100,  
            backgroundImage:ExactAssetImage("assets/images/rayeneben.png"),
            ),
            Positioned(
              left:16,
              bottom: 0,
              child: Icon(Icons.brightness_1 ,
              color:Colors.green,
              size:9)),
          ]
        ),),
        
         


      ],
      
    );
  }
}


// ignore: camel_case_types
/*class notificationicon extends StatelessWidget{
  const notificationicon({
    super.key,
    int counter =0,
  });


  @override
  Widget build(BuildContext context){
    return Row(
      children: <Widget>[
      IconButton(
        onPressed: (){
          debugPrint('Notificationbar');
        } ,
        icon:Stack(
          children:<Widget>[
            CircleAvatar(
            radius:100,  
            backgroundColor:Colors.white,
            child:Icon(Icons.notifications,
            color:Colors.black)),
            Positioned(
              left:16,
              bottom: 15,
              child: Icon(Icons.brightness_1 ,
              color:Colors.red,
              size:9))
          ]
        ),), 


      ],
    );
  }
}*/
  
