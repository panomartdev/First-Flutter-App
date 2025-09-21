import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  
  final _image = 'https://images.unsplash.com/photo-1758205763784-403107e86826?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D';
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          TextButton(
            onPressed: (){
              print("First button Click");
            },
            style: TextButton.styleFrom(
              foregroundColor: Colors.blueGrey
            ),
            child: Text("First button", style: TextStyle(fontSize: 20))
          ),

          const SizedBox(height: 20),

          TextButton(
            onPressed: (){
              print("Second button Click");
            },
            child: Text("Second button", style: TextStyle(fontSize: 20, color: Colors.green[900]))
          ),

          const SizedBox(height: 20),

          FilledButton(
            onPressed: (){
              print("FilledButton Click!");
            },
            style: FilledButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
            ), 
            child: Text("Filled Button", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
          ),

          const SizedBox(height: 20),

          OutlinedButton(
            onPressed: (){
              print("Outlined Click!");
            },
            style: OutlinedButton.styleFrom(
              side: const BorderSide(
                color: Colors.blue,
                width: 2,
              ),
              shape: StadiumBorder(),
            ), 
            child: Text("Outlined", style: TextStyle(fontSize: 20, color: Colors.blueAccent))
          ),

          const SizedBox(height: 20),

          ElevatedButton(
            onPressed: (){
              print("Elevated Click!");
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
            ),
            child: Text("Elevated Buttons", style: TextStyle(fontSize: 20))
          )
        ] 
      ),
    );
  }
}