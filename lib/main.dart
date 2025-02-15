import 'package:flutter/material.dart';

void main ()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Screen(),
  ));
}

class Screen extends StatelessWidget {
  const Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            spacing: 10,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                spacing: 20,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Images(w: 160, link: 'https://i.pinimg.com/236x/74/db/39/74db399e54ae28'
                      'd5cf71cbf985ad6493.jpg', txt: 'Design',)
                  ,Images(w: 160, link: 'https://i.pinimg.com/236x/d0/65/e2'
                      '/d065e2fc38d21f213689975da1bcd653.jpg', txt: 'Furniture',)
                ],
              ),
              Images(w: 335, link: 'https://i.pinimg.com/736x/65/'
                  'cb/bc/65cbbc9711bd134d88c6ebc85300fea0.jpg', txt: '',),

              Text("Wardrobes and shelves help us keep our clothes and belongings"
                  " organized. Every piece of furniture has a purpose."
                  ,style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.w700
                  )),
              Text("Every piece of furniture has a purpose,"
                  " and choosing the right ." ,style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                  fontWeight: FontWeight.w300
              )),
              Images(w: 335, link: 'https://i.pinimg.com/474x/92/58/dd/925'
                  '8dd84267e3d0a27ebf09d0dc543c8.jpg', txt: '',),
              Text("Wardrobes and shelves help us keep our clothes and belongings"
                  " organized. Every piece of furniture has a purpose."
                  ,style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.w700
                  )),
              Text("Every piece of furniture has a purpose,"
                  " and choosing the right." ,style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                  fontWeight: FontWeight.w300
              )),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: RichText(text: TextSpan(
          children: [
            TextSpan(text: "News",style: TextStyle(
              fontSize: 25,
              color: Colors.black,
              fontWeight: FontWeight.w700
            )),
            TextSpan(text: "Cloud",style: TextStyle(
                fontSize: 25,
                color: Colors.amber,
                fontWeight: FontWeight.w700
            ))
          ]
        )),
      ),
    );
  }
}


class Images extends StatelessWidget {
  const Images({super.key, required this.w, required this.link, required this.txt});
final double w;
final String link ;
final String txt;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children:[ Container(
        width: w,
        height:130 ,
        child:ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(link,
          fit: BoxFit.cover,
          ),
        ) ,
      ),
        Text(txt,style: TextStyle(
            fontSize: 15,
            color: Colors.black,
            fontWeight: FontWeight.w600
        ))
    ]
    );
  }
}
