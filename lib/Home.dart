import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double screenWidth = screenSize.width;
    double screenHeight = screenSize.height;
    double screenRatio = screenWidth / screenHeight;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height:screenWidth*0.2 ,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Hello",style: TextStyle(fontSize: screenWidth*0.08),),
                      Text("Jeremie",style: TextStyle(fontSize: screenWidth*0.08,fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.notifications_none,size: screenWidth*0.08,),
                      SizedBox(width: 10,),
                      Icon(Icons.more_vert,size: screenWidth*0.08)
                    ],
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: List.generate(
                      3, (index) =>
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius:BorderRadius.all(Radius.circular(30)),
                          child: Stack(
                            children: [
                              Container(
                                padding: EdgeInsets.all(20),
                                height: screenWidth*0.5,
                                width: screenWidth*0.5,
                                decoration: BoxDecoration(
                                  color: index==0?Color(0xfff75e46):index==1?Color(0xfffcd983):Color(0xff3d1d2c),
                                  borderRadius:BorderRadius.all(Radius.circular(30)),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    index==0?Text("Documents",style: TextStyle(color: Colors.white,fontSize: screenWidth*0.05),):index==1?Text("Videos",style: TextStyle(color: Colors.white,fontSize: screenWidth*0.05),):Text("Images",style: TextStyle(color: Colors.white,fontSize: screenWidth*0.05),),
                                    index==0?Text("230 MB",style: TextStyle(color: Colors.white54,fontSize: screenWidth*0.04),):index==1?Text("1.02 GB",style: TextStyle(color: Colors.white54,fontSize: screenWidth*0.04),):Text("3.0 GB",style: TextStyle(color: Colors.white54,fontSize: screenWidth*0.04),),
                                  ],
                                ),
                              ),
                              Positioned(
                                  bottom: -40,
                                  right: -40,
                                  child: index==0?Image.asset('assets/folder.webp',height: screenWidth*0.4,):index==1?Image.asset('assets/video.png',height: screenWidth*0.4,):Image.asset('assets/gallery.webp',height: screenWidth*0.4,)
                              ),
                            ],
                          ),
                        ),
                      )
                  ),
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.all(20),
              child: Container(
                padding: EdgeInsets.all(20),
                height: screenWidth*0.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  border: Border.all(color: Color(0xffe1dede))
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("3.3 GB/10 GB",style: TextStyle(fontSize: screenWidth*0.05,fontWeight: FontWeight.bold),),
                        Text("Espace Disponible",style: TextStyle(fontSize: screenWidth*0.04,color: Color(
                            0xffafafaf)),)
                      ],
                    ),
                    Container(
                      child: CircularPercentIndicator(
                        radius: 40,
                        lineWidth: 5,
                        animationDuration:2,
                        percent: 0.3,
                        progressColor:Colors.orange,
                        circularStrokeCap: CircularStrokeCap.round,
                        backgroundWidth: 5,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Fichiers recents",style: TextStyle(fontSize: screenWidth*0.06,fontWeight: FontWeight.bold),),
                      Text("Tout voir",style: TextStyle(fontSize: screenWidth*0.04,color: Color(0xffafafaf)),),
                    ],
                  ),
                  Column(
                    children: List.generate
                      (3, (index) => Padding(
                        padding: const EdgeInsets.only(bottom: 10,top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                  child: index==0?Image.asset('assets/beer.jpg',height: screenWidth*0.21,width: screenWidth*0.21,fit: BoxFit.fill,):index==1?Image.asset('assets/car.jpeg',height: screenWidth*0.21,width: screenWidth*0.21,fit: BoxFit.fill,):index==2?Image.asset('assets/adobe.webp',height: screenWidth*0.21,width: screenWidth*0.21,fit: BoxFit.fill,):Image.asset('assets/patern.jpg',height: screenWidth*0.21,width: screenWidth*0.21,fit: BoxFit.fill,)
                              ),
                              SizedBox(width: 20,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Beer Design",style: TextStyle(fontSize: screenWidth*0.05,fontWeight: FontWeight.bold),),
                                  Text("2 MB",style: TextStyle(fontSize: screenWidth*0.04,fontWeight: FontWeight.bold,color: Color( 0xffafafaf)),),
                                ],
                              )
                            ],
                          ),
                          Icon(Icons.more_vert,color: Color( 0xffafafaf),size: screenWidth*0.07,)
                        ],
                    ),
                      )),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
