import 'package:firstapp/models/person.dart';
import 'package:firstapp/screen/addform.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Item extends StatefulWidget {
  const Item({super.key});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: data.length,
            itemBuilder: (context,index){
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: data[index].career.color
                ),
                margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                padding: EdgeInsets.symmetric(vertical: 25, horizontal: 20),
                child : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //Name
                        Text(
                          data[index].name, 
                          style: GoogleFonts.prompt(
                            textStyle: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w800,
                              color: Colors.white
                            )
                          )
                        ),
                        const SizedBox(height: 10),
                        //Age and Career
                        Text("อายุ : ${data[index].age} ปี, อาชีพ : ${data[index].career.title}",
                          style: GoogleFonts.prompt(
                            textStyle: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white
                            )
                          )
                        ),
                      ]
                    ),
                    Image.asset(
                      data[index].career.image,
                      width: 60,
                      height: 60,
                      fit: BoxFit.cover,
                    )
                  ]
                ),
              );
            },
          ),
        ),
        SizedBox(
          width: 100,
          height: 100,
          child: IconButton( 
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (ctx)=> const AddForm()));
            }, 
            icon: Icon(
              Icons.add,
              color: Colors.blue,
              size: 50,
            ),
          )
        )
      ],
    );
  }
}