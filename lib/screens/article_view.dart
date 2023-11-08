import 'package:flutter/material.dart';
import 'package:news_app/models/newsModel.dart';

class article_view extends StatefulWidget {
  const article_view({super.key});
  static const String RouteName="article+view";

  @override
  State<article_view> createState() => _article_viewState();
}

class _article_viewState extends State<article_view> {
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Articles;
    return Scaffold(
      appBar:AppBar(
        toolbarHeight: 70,
        shape: RoundedRectangleBorder(borderRadius:BorderRadius.only(
            bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)
        )),        backgroundColor: Color(0xff39A552),
        title: Text("News App",style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white
        ),),
        centerTitle: true,
      ),
      // drawer: drawerView(drawerItemSelected),
      body: Stack(
          children:[
            Image.asset("assets/images/background.png",
              fit: BoxFit.fill,
             width: MediaQuery.of(context).size.width,),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                child:SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Image.network(args.urlToImage??"",
                      height: 200,
                      width: 500,
                      ),
                    ),
                    SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(args.source?.name??"",
                            style:TextStyle(
                                color: Colors.black45,
                                fontWeight: FontWeight.w600,
                                fontSize: 14
                            )
                        ),
                        Text(args.publishedAt?.substring(0,10)??'',
                                style:TextStyle(
                                    color: Colors.black45,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14
                                )
                            )
                      ],
                    ),
                    SizedBox(height: 15,),
                    Text(args.title??"",
                        style:TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 18
                        )
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Text(args.description??"no content",
                          style:TextStyle(
                              color: Colors.black45,
                              fontWeight: FontWeight.w600,
                              fontSize: 18
                          )
                      ),
                    ),
                    SizedBox(height: 15,),
                    InkWell(
                      onTap: () {

                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("View Full Article ",
                            style:TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 20
                            ),
                          ),
                          Icon(Icons.arrow_forward_ios_sharp,size: 18,color: Colors.black,)
                        ],
                      ),
                    ),


                  ],
                  ),
                ),
              ),
            )

          ]

      ),
    );
  }
}
