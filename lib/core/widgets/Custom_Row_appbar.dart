import 'package:SHOPPING/core/models/Homemodel.dart';
import 'package:SHOPPING/features/Home/presentation/Search_Screen.dart';
import 'package:SHOPPING/features/favorites/presentation/screens/favorites.dart';
import 'package:flutter/material.dart';

class CustomRowAppbar extends StatelessWidget {
  const CustomRowAppbar({super.key, required this.product});
  final List<Products> product;
  @override
  Widget build(BuildContext context) {
    return    Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 20),
                      child: Text(
                        'Pazar',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Search(product:product ,),),);
                      },
                      child: Container(
                          height: 35,
                          width: 230,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Icon(Icons.search),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Center(child: Text('What are you looking for?')),
                            ],
                          )),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>FavoritesScreen()));
                      },
                      icon: Icon(
                        Icons.favorite_border,
                        size: 30,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                );
               
  }
}