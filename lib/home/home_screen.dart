import 'dart:convert';


import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../api_services/urls.dart';
import '../list_detail/list_detail.dart';
import '../utils/widgets/responsive_screen.dart';


import 'custumSearchDeligate.dart';
import 'logic.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  dynamic? response;

  List<dynamic> data = Get.find<UserHomeLogic>().jsonResult!['RelatedTopics'];
  List<dynamic> filteredData =Get.find<UserHomeLogic>().jsonResult!['RelatedTopics'];


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Get.put(UserHomeLogic());


    // getMethods(baseusl,true,getUserProfileRepo);




  }
  void filterData(String query) {
    setState(() {
      filteredData = data
          .where((item) =>
          item['Result'].toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }
  getData() async {
    // String data = await DefaultAssetBundle.of(context).loadString("assets/json/data.json");
    // jsonResult = jsonDecode(data);
    // final dio = Dio();
     // response = await dio.get(baseusl);
    // Get.find<UserHomeLogic>().getUserProfileModel =
    //     HomeModel.fromJson(response);
    // //
//    log("response ${intl.Bidi.stripHtmlIfNeeded(jsonResult!['RelatedTopics'][1]["Text"].toString().split('-').first)}");

  }
  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return  Scaffold(
      appBar: AppBar(
        title: Text(Get.find<UserHomeLogic>().jsonResult!['Heading'],style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold)),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search,color: Colors.black,),
            onPressed: () {
              showSearch(
                context: context,
                delegate: MySearchDelegate(Get.find<UserHomeLogic>().jsonResult!['RelatedTopics']),
              );
            },
          ),
        ],
      ),


      body: OrientationBuilder(
        builder: (context, orientation) {
          return Responsive(
            mobile: SizedBox(
              height: size.height *1,
              width: size.width*1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [




                  Padding(padding: EdgeInsets.symmetric(horizontal: 5 ,vertical: 10),child: Text("Simpsons Character",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),),
                  Expanded(child: ListView.builder(itemBuilder: (context,index){
                    return InkWell(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  ListDetail(
                            characterDescription: Get.find<UserHomeLogic>().jsonResult!['RelatedTopics'][index]["Text"].toString().split('/').first,
                            characterName:Get.find<UserHomeLogic>().jsonResult!['RelatedTopics'][index]["Text"].toString().split('-').first,
                            characterLink: Get.find<UserHomeLogic>().jsonResult!['RelatedTopics'][index]["FirstURL"],characterImage:Get.find<UserHomeLogic>().jsonResult!['RelatedTopics'][index]["Icon"]["URL"] ,)),
                        );
                      },
                      child: Card(
                        child: ListTile(
                        title: Text(Get.find<UserHomeLogic>().jsonResult!['RelatedTopics'][index]["Text"].toString().split('-').first?? "Null"),


                        ),
                      ),
                    );
                  },itemCount:  Get.find<UserHomeLogic>().jsonResult?['RelatedTopics'].length ??0,))
                ],
              ),
            ),
            tablet:SizedBox(
              height: size.height *1,
              width: size.width*1,
              child: Row(
                children: [
                  SizedBox(
                    width: size.width*0.5,
                    child: Column(
                      children: [




                        Expanded(child: ListView.builder(itemBuilder: (context,index){
                          return InkWell(
                            onTap: (){
                              setState(() {
                                Get.find<UserHomeLogic>().characterDescription.value=Get.find<UserHomeLogic>().jsonResult!['RelatedTopics'][index]["Text"].toString().split('-').last;
                                Get.find<UserHomeLogic>().characterImage=Get.find<UserHomeLogic>().jsonResult!['RelatedTopics'][index]["Icon"]["URL"];
                                Get.find<UserHomeLogic>().characterName.value=Get.find<UserHomeLogic>().jsonResult!['RelatedTopics'][index]["Text"].toString().split('-').first;
                                Get.find<UserHomeLogic>().characterLink.value=Get.find<UserHomeLogic>().jsonResult!['RelatedTopics'][index]["FirstURL"];


                              });
                           },
                            child: Card(
                              child: ListTile(
                                 title: Text(Get.find<UserHomeLogic>().jsonResult!['RelatedTopics'][index]["Text"].toString().split('-').first?? "Null"),
                              ),
                            ),
                          );
                        },itemCount:  Get.find<UserHomeLogic>().jsonResult?['RelatedTopics'].length,))
                      ],
                    ),
                  ),
                  SizedBox(
                    width: size.width*0.5,
                    child: Card(
                      child:SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [

                            Get.find<UserHomeLogic>().characterImage.isEmpty?
                            Image.asset("assets/images/nodata.png",width: 150):
                            Image.network("$mediaUrl${Get.find<UserHomeLogic>().characterImage}",width: 150),
                             Padding(
                               padding:const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                               child: Text( Get.find<UserHomeLogic>().characterName.value,style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                             ) ,
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                              child: Text(Get.find<UserHomeLogic>().characterDescription.value,style:TextStyle(fontSize: 16,color: Colors.black,),),
                            ),

                          ],
                        ),
                      ),

                      // child: ListTile(
                      //   leading: Image.network("$mediaUrl$characterImage!",width: 70,height: 100,),
                      //   title:Text(characterName!) ,
                      //   subtitle: Text(characterDescription!),
                      //
                      //
                      //
                      // ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
