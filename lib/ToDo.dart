import 'package:flutter/material.dart';
import 'package:flutter_application_2/Style.dart';

class Todo extends StatefulWidget {
  const Todo({super.key});

  @override
  State<Todo> createState() => _TodoState();
}

class _TodoState extends State<Todo> {

  List ToDoList=[];

  String item="";

  MyInputOnChange(content){

    setState(() {
      item=content;
    });



  }


  AddItem( ){


    setState(() {
      ToDoList.add({'item':item});
    });
  }


  RemoveItem(index){

    setState(() {
      ToDoList.removeAt(index);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Todo"),
      ),

      body: Container(
        padding: EdgeInsets.all(20),
        child:Column(
          children: [

            Expanded(
              flex: 10,

              child: Row(

                children: [

                  Expanded(
                    flex: 80,
                    
                    child: TextFormField(onChanged: (content) {
                      MyInputOnChange(content);
                    }, decoration: AppInputDecoration("List item"),)
                    
                    ),
                   SizedBox(width: 15,),
                  Expanded(
                    flex: 20,
                    
                    child: ElevatedButton(onPressed:() {
                      AddItem( );
                      
                    }, child:  Text("Add"),
                    style :AppButtonStyle(),
                    ),
                    
                    ),


                ],



              ),
              
              ),
            Expanded(

              flex: 90,

              child: ListView.builder(
                itemCount: ToDoList.length,
                itemBuilder: (context,index){

                  return Card(
                    child: SizedBox50(
                      Row(
                        children: [


                          Expanded(
                    flex: 85,
                    
                    child: Text(ToDoList[index]["item"].toString())
                    
                    ),
                   SizedBox(width: 15,),
                  Expanded(
                    flex: 15,
                    
                    child: TextButton(onPressed:() {

                      RemoveItem(index);
                      
                    }, child:  Icon(Icons.delete),
                     
                    ),
                    
                    ),


                          

                        ],
                      )
                    )


                  );
                }
                )
              
              ),
            

          ],
        ),
      ),



    );
  }
}