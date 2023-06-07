import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:langtalk/utils/constants.dart';

class DashBoardPage extends StatelessWidget {
  const DashBoardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor:  Colors.black,
      

      appBar: AppBar(
        actions: [
            Container(
              
              margin: EdgeInsets.only(right: 20.w),
              width: 40.w,
              height: 20.h,
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.circular(12.r),
              ),
        
            ),
          Container(
              
              margin: EdgeInsets.only(right: 20.w),
              width: 40.w,
              height: 20.h,
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.circular(12.r),
              
              ),
        
            ),
        
        ],
        backgroundColor: Colors.black,
        centerTitle: false,
        title: Container(
          child: Stack(children: [
            Container(
              
              width: 40.w,
              height: 40.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50.r),
              
              ),
        
            ),
        
            Positioned(
              top: 29.h,
              left: 27.w,
              
              child: Container(
              width: 10.w,
              height: 10.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red
              ),
            ))
          ]),
        ),
      
      ),

      body: Column(

        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(

                

                margin: EdgeInsets.only(top: 60.h),

                width: 259.w,
                height: 252.h,
                decoration: const BoxDecoration(

                  color: Colors.red,
                  shape: BoxShape.circle
                ),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children : [

                     Container(
                      margin: EdgeInsets.only(top:20.h,bottom: 10.h),
                      child:  Text('Hi Tadd',style: TextStyle(
                        color: AppColors.secondaryColor,fontSize: 20.sp
                      ),),
                    ),

                    
                    Container(
                      margin: EdgeInsets.only(top:20.h,bottom: 10.h),
                      child: Text('Tap to Chat',style: TextStyle(
                        color: Colors.white,fontSize: 20.sp
                      ),),
                    ),

                  ],
                ),
              ),
            ],
          )
        ],
      ),
      
    );
  }
}