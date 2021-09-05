import 'package:flutter/material.dart';

import 'data.dart';

class DetailsScreen extends StatefulWidget {
  Product? product;
  DetailsScreen({this.product});
  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  int _orderNumber= 1;
  int _selectedColor = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.product!.color ,
      appBar:  AppBar(
        //leading: Icon(Icons.arrow_back,color: Colors.white,),
        elevation: 0.0,
        backgroundColor: widget.product!.color,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Colors.white,size: 30.0,)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(onPressed: (){}, icon: Icon(Icons.add_shopping_cart,color: Colors.white,size: 30.0,)),
          ),
        ],
      ),
      body: Stack(
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(child: Container(),flex: 3,),
              Expanded(child: Padding(
                padding: const EdgeInsets.only(top:20.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(20.0),topLeft:Radius.circular(20.0) )
                  ),
                ),
              ),flex: 7,),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                      Text('Aristocratic Hand Bag',style: TextStyle(color: Colors.white,fontSize: 12.0),),
                     Text('${widget.product!.name}',style: TextStyle(color: Colors.white,fontSize: 25.0,fontWeight: FontWeight.bold),),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text('Price',style: TextStyle(color: Colors.white,fontSize: 14.0),),
                                  Text('\$ ${widget.product!.price}',style: TextStyle(color: Colors.white,fontSize: 25.0,fontWeight: FontWeight.bold),),
                                ],
                              ),
                            ),
                            Expanded(child:
                              Image.asset('images/${widget.product!.imageName}',fit: BoxFit.fill,),
                              flex: 2,),
                          ],
                        ),
                      ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(child:Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Color',style: TextStyle(color: Colors.grey,fontSize: 16.0),),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: GestureDetector(
                                    onTap: (){
                                      setState(() {
                                        _selectedColor = 1;
                                      });
                                    },
                                    child: Container(
                                      padding: EdgeInsets.all(2.5),
                                      height: 15.0,
                                      width: 15.0,
                                      decoration: BoxDecoration(
                                        color:(_selectedColor==1 )?Colors.black54:Colors.blue,
                                        shape: BoxShape.circle,
                                        ),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.blue,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: GestureDetector(
                                    onTap: (){
                                      setState(() {
                                        _selectedColor = 2;
                                      });
                                    },
                                    child: Container(
                                      padding: EdgeInsets.all(2.5),
                                      height: 15.0,
                                      width: 15.0,
                                      decoration: BoxDecoration(
                                        color: (_selectedColor==2 )?Colors.black54:Colors.yellow,
                                        shape: BoxShape.circle,
                                       ),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.yellow,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: GestureDetector(
                                    onTap: (){
                                      setState(() {
                                        _selectedColor = 3;
                                      });
                                    },
                                    child: Container(
                                      padding: EdgeInsets.all(2.5),
                                      height: 15.0,
                                      width: 15.0,
                                      decoration: BoxDecoration(
                                          color: (_selectedColor==3 )?Colors.black54:Colors.grey,
                                        shape: BoxShape.circle,),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),flex:1),
                      Expanded(child:Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Size',style: TextStyle(color: Colors.grey,fontSize: 14.0),),
                          Text('${widget.product!.size} cm',style: TextStyle(color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold),),
                        ],
                      ),flex:1)

                ],
              ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text('${widget.product!.description}',style: TextStyle(
                      height: 1,
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(20.0)
                              ),
                              child: IconButton(onPressed: (){
                                setState(() {
                                  if(_orderNumber > 1){
                                    _orderNumber--;
                                  }
                                });
                              },
                                icon:Icon(Icons.minimize_outlined,color: Colors.black,),
                                color: Colors.white,),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 12.0),
                              child: Text('$_orderNumber', style: TextStyle(wordSpacing: 1.0,fontSize: 20.0),),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(20.0)
                              ),
                              child: IconButton(onPressed: (){
                                setState(() {
                                  _orderNumber++;
                                });
                              },
                                icon:Icon(Icons.add,color: Colors.black,),
                                color: Colors.white,),
                            ),
                          ],
                        ),

                        Container(
                          decoration: BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(Icons.star,color: Colors.white,),
                        )

                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(flex:1,child: Container(
                        margin: EdgeInsets.only(right: 20.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(color: widget.product!.color!),
                        ),
                        child: Icon(Icons.add_shopping_cart,color:widget.product!.color! ,),
                      ),),
                      Expanded(flex:4,child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blue[900],
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: TextButton(
                          onPressed: (){},
                          child: Text('BUY NOW',style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            color: Colors.white,
                          ),),
                        ),
                      ),),
                    ],
                  ),
                  ),
              ]
            ),
            ),
          ),
      ]
      ),
    );
  }
}
