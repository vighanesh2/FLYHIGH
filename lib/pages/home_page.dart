import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:go_moon/widgets/custom_dropdown_button.dart';

class HomePage extends StatelessWidget{
  late double _deviceHeight, _deviceWidth;
   
  HomePage({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        
        child: Container(
           width: _deviceHeight,
          padding: EdgeInsets.symmetric(horizontal: _deviceWidth*0.05),
          height: _deviceHeight,
          child:Stack (children: [ Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _pageTitle(),
             _bookRiderWidget(),
            ],
          ), Align(
            alignment: Alignment.topCenter,
            child: _astroImageWidget(),

          ),],),
         
          ),
          ), 
          );
  }

Widget _pageTitle( ){
  return const Text( "FLY HIGH", style: TextStyle(color: Colors.white,fontSize: 70, fontWeight: FontWeight.w800),);
}

  Widget _astroImageWidget(){
    return Container(
     height: _deviceHeight*0.60,
     width: _deviceWidth*0.75,
      decoration: const BoxDecoration(
   
        image: DecorationImage(
         fit:BoxFit.fill,
          image: AssetImage("assets/images/image1.png"),
        ),
      ),
    );
  }

Widget _bookRiderWidget()
{
  return Container(height: _deviceHeight*0.25, child:Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    mainAxisSize: MainAxisSize.max,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      _destinationDropDownWidget(),
      _travellersInformationWidget(),
      _rideButton(),

    ],
  ),);
}

  Widget _destinationDropDownWidget()
{
return CustomDropdownButtonClass(values: const ['James Web Station', 'Prenure Station',]
, width: _deviceWidth,)  ;
}
Widget _travellersInformationWidget(){
return Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  mainAxisSize: MainAxisSize.max,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    CustomDropdownButtonClass(values: const ['1', '2','3','4',]
    , width: _deviceWidth*0.45,),
      CustomDropdownButtonClass(values: const ['Economy', 'Business','First','Private',]
    , width: _deviceWidth*0.40,),
  ],
)  ;
}

Widget _rideButton(){
  return Container (
    margin: EdgeInsets.only(bottom: _deviceHeight*0.001),
    width: _deviceWidth,
    decoration: BoxDecoration(color:Colors.white, borderRadius:BorderRadius.circular(10)),
    child: MaterialButton(onPressed: (){},child: const Text("Book Rider!", style:TextStyle(color: Colors.black,))),


  );
}
}