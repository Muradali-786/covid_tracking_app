import 'package:flutter/material.dart';
import 'package:maxiii/View/WorldStates.dart';

class DetailsScreen extends StatefulWidget {
  String name ;
  String image;
  int totalCase,totalDeaths,totalRecovered,active,critical,todayRecovered ,test;

 DetailsScreen({
   required this.name,
   required this.image,
   required this.totalCase,
   required this.totalDeaths,
   required this.todayRecovered,
   required this.active,
   required this.critical,
   required this.totalRecovered,
   required this.test,





 });

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.name),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * .079),
                child: Card(
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .07,
                      ),
                      ReusableRow(title: 'Cases', value: widget.totalCase.toString()),
                      ReusableRow(title: 'Tests', value: widget.test.toString()),
                      ReusableRow(title: 'Recovered', value: widget.totalRecovered.toString()),
                      ReusableRow(title: 'Deaths', value: widget.totalDeaths.toString()),
                      ReusableRow(title: 'Critical', value: widget.critical.toString()),
                      ReusableRow(title: 'Today Recovered', value: widget.totalRecovered.toString()),


                    ],
                  ),
                ),
              ),

              Positioned(
                top: 8,
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(widget.image),
                ),
              )
            ],
          )

        ],
      ),
    );
  }
}
