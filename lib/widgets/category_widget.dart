import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {

  const CategoryWidget({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return Column(
        children: [
          GestureDetector(
            onTap: () {
              //Navigator.push(context, MaterialPageRoute(builder: CategoryPage()))
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              padding: const EdgeInsets.all(20),
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          )
        ],
       );
  }
}