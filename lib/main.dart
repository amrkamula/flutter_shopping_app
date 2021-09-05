import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_ecommerce/details_screen.dart';
import 'data.dart';

void main(){
  runApp(ShoppingApp());
}

class ShoppingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Shopping App',
      debugShowCheckedModeBanner: false,
      home: MyShoppingApp(),
    );
  }
}


class MyShoppingApp extends StatefulWidget {
  final title;
  MyShoppingApp({this.title});
  @override
  _MyShoppingAppState createState() => _MyShoppingAppState();
}

class _MyShoppingAppState extends State<MyShoppingApp> {
  var _selectedCategory = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back,color: Colors.grey,),
        elevation: 0.0,
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Colors.grey,size: 30.0,)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(onPressed: (){}, icon: Icon(Icons.add_shopping_cart,color: Colors.grey,size: 30.0,)),
          ),
        ],
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(flex: 1,child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Women',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 30.0),),
          ),),
          Expanded(flex: 1,child: ListView.builder(
            itemCount: Data.categories.keys.toList().length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context,int index){
                return GestureDetector(
                  onTap: (){
                    setState(() {
                      _selectedCategory = index;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('${Data.categories.keys.toList()[index]}',style: TextStyle(color: (_selectedCategory==index)?Colors.blue[900]:Colors.grey,fontSize:16.0 ,fontWeight: FontWeight.bold),),
                        Container(
                          height: 2.0,
                          width: 50.0,
                          decoration: BoxDecoration(
                            color: (_selectedCategory==index)?Colors.blue[900]:Colors.white,
                            borderRadius: BorderRadius.circular(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),),
          Expanded(flex: 10,child: GridView.builder(

            itemCount: Data.categories.values.toList()[_selectedCategory].length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 0.7,
                crossAxisCount: 2
              ), itemBuilder: (BuildContext context,int index){
              Product product = Data.categories.values.toList()[_selectedCategory][index];
                return Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailsScreen(product: product,)));
                    },
                    child: Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex:3,
                            child: Container(
                              decoration: BoxDecoration(
                                color: product.color,
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(40.0),
                                child: Image.asset('images/${product.imageName}',fit: BoxFit.cover,),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Column(
                              children: [
                                SizedBox(height: 10.0,),
                                 Text('${product.name}',style: TextStyle(color: Colors.grey,fontSize: 16.0),),
                                Text('\$ ${product.price}',style: TextStyle(color: Colors.black,fontSize: 16.0,fontWeight: FontWeight.w700),),
                              ],

                            ),
                          ),

                      ]),
                    ),
                  ),
                );
          }),),
        ],
      ),
    );
  }
}
