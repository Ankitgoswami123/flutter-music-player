import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';


class DetailedAudioPage extends StatefulWidget {
  const DetailedAudioPage({Key? key}) : super(key: key);

  @override
  _DetailedAudioPageState createState() => _DetailedAudioPageState();
}

class _DetailedAudioPageState extends State<DetailedAudioPage> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.purple[100],
      body: Stack(
        children: [
          Positioned(
              top: 0,
              left: 0,right: 0,
          height: screenHeight/3,
          child: Container(
            color: Colors.deepPurple[300],
          )),
          Positioned(
          top: 0,left: 0,right: 0,
              child: AppBar(
                leading: IconButton(
                  icon: Icon(Icons.arrow_back_ios,), onPressed: () {  },
                ),
                  actions:[
                    IconButton(
                      icon: Icon(Icons.search,), onPressed: () {  },
                    ),
                  ]
              )),
          Positioned(top: screenHeight*0.2,left:0,right:0,height: screenHeight*0.36,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    SizedBox(height: screenHeight*0.1,),
                    Text("The AX Player",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,fontSize: 28,
                      letterSpacing: 4,
                    ),),
                    SizedBox(height: screenHeight*0.01,),
                    Text('Arijit Singh',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,letterSpacing: 3,color: Colors.black,
                    ),)
                  ],
                ),
          )),
          Positioned(
            top: screenHeight*0.10,
            left: (screenWidth-150)/2,
            right:  (screenWidth-150)/2,
            child: Container(

             child: Image.asset('images/media.png'),
            ),
          ),
          Positioned(
              left: (screenWidth-150)/2,
              right: (screenWidth-150)/2,
              top:screenHeight*0.4,
              child:   ElevatedButton(
            onPressed: () async {

            final player = AudioPlayer();
            var duration = await player.setAsset('assets/music1.mp3');
            player.play();


            },
            child: Container(
              height: 30,
              width: 40,
              child: Text("Click Here", style: TextStyle(fontSize: 12),),
            )


          )  )

        ],
      ),
    );
  }
}
