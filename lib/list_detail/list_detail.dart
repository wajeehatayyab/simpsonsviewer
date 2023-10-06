import 'package:flutter/material.dart';
import 'package:simpsonsviewer/api_services/urls.dart';

class ListDetail extends StatelessWidget {
  const ListDetail({Key? key, this.detailList, this.characterName, this.characterImage, this.characterDescription, this.characterLink}) : super(key: key);

final  List<dynamic>? detailList;
final String? characterName;
final String? characterLink;

final String? characterImage;
final String? characterDescription;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text(characterName!,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),),
      body: SafeArea(
        child: OrientationBuilder(
      builder: (context, orientation) {
        return Card(

            child:Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [

                characterImage!.isEmpty?
               Image.asset("assets/images/nodata.png",width: 150)
             :  Image.network("$mediaUrl${characterImage!}",width: 150),
                Text(characterName!,style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),) ,
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 15),
                 child: Text(characterDescription!,style:TextStyle(fontSize: 16,color: Colors.black,),),
               ),
                SizedBox(height: 100,)
              ],
            ),


          );}
        ),
      ),

    );
  }
}
