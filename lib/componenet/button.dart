import 'package:flutter/material.dart';

import '../util/Colors.dart';

class PrimaryButton extends StatelessWidget {
  String title;
  Color textColor;
  Color backgroundColor;
  IconData iconName;
  Color iconNameColor;
  VoidCallback onPress;
  String imageLeft;
  bool iconYN;
  double bordercircular;
  PrimaryButton({Key? key,
    required this.title,
    required this.onPress,
             this.textColor = AppColors.whiteColor,
             this.backgroundColor = AppColors.primaryColor,
             this.iconName =Icons.arrow_circle_right,
             this.iconNameColor = AppColors.whiteColor,
             this.imageLeft ='',
             this.iconYN = true,
             this.bordercircular=30.0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: onPress,
      child: Container(
        height: 55,
        width: MediaQuery.of(context).size.width*.9,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius:  BorderRadius.circular(bordercircular),
            border: Border.all(
                color: Colors.grey.shade400,
                width: 1
            )
        ),
        child:
        iconYN==false ?
        Center(child: Text(title, style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.bold,color: textColor,fontSize: 18),))
        : imageLeft==''?
          Row(
          children: [

            Expanded(
               flex: 7,
                child: Center(child: Text(title, style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.bold,color: textColor,fontSize: 18),))),
            Expanded(
                flex: 1,
                child: Icon(iconName,size: 30,color: iconNameColor,))
          ]
        )
        :
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Image(image: AssetImage(imageLeft,),height: 20,),
              SizedBox(width: MediaQuery.of(context).size.width*.03,),
              Text(title, style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.bold,color: textColor,fontSize: 18),),
            ]
        ),


          //SizedBox(width: MediaQuery.of(context).size.width*.03,),

          //Text('Login with Google', style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.bold,color: AppColors.primaryColor,fontSize: 18),),



      ),
    );
  }
}
