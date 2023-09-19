import 'package:flutter/material.dart';
void main()=> runApp(MyMemory());
class MyMemoryGame extends StatelessWidget {
  @override
  widget build(BuildContext context){
    return MaterialApp(),
    home:MemoryGame(),
    );

  }
  }
class MemoryGame extends StatefulWidget{
  @override
  _MemoryGameState createState()=> _MemoryGameState();

}
class _MemoryGameState extends State<MemoryGame> {
  List<String> images = [
    'image1.jpg',
    'image2.jpg',
    'image1.jpg',
    'image2.jpg',

  ];

  List<bool> flipped= List.filled(4, false);
  List<int> selected = [];
  bool isProcessing = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('Jogo de Memória'),

      ),body: Center(
        child: GridView.builder(
            itemCount: 4,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
     crossAxisCount: 2,
            ),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  if (!isProcessing && !flipped[index]) {
                    setState(() {
                      flipped[index] =true;
                      selected.add(index);

                      if(selected.length== 2) {
                        isProcessing = true;
                        Future.delayed(Duration(seconds: 1), ()) {
                          if (images[select[0]] == images[selected[1]]) {
                            selected.clear();
                          } else {
                            flipped[selected[0]] =false;
                            flipped[selected[1]] =false;
                            selected.clear();

                          }
                          isProcessing = false;
                        });
                  }
                });
            }
  },
  child: Container(
    margin: EdgeInsets.all(10),
    decoration: BoxDecoration(
      color: Colors.blue
      borderRadius: BorderRadius.circular(10),
    ),
    child: Center(
      child: flipped[index] 
      ? Image.asset(
        images[index],
        width: 100,
        height: 100,
      )
      :Text(
        'toque para virar'
        style: TextStyle(fontSize: 16, color: 
        Colors.white),
      ),
    ),
  ),
  ),
},
),
),
);
}