import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ActivePage extends StatefulWidget {
  const ActivePage({super.key});

  @override
  State<ActivePage> createState() => _ActivePageState();
}
class _ActivePageState extends State<ActivePage> with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    loadingController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),)
      ..addListener(() {
        setState(() {});
      });
  }
  late AnimationController loadingController;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white54,
      appBar: AppBar(
        backgroundColor: Colors.white54,
        elevation: 0,
        automaticallyImplyLeading: false,
        leadingWidth: 70.w,
        centerTitle: true,
        leading: Icon(Icons.chevron_left, color: Colors.black, size: 17.sp,),
        title: Text('Buy my first car',
        style: TextStyle(color:const Color(0xFF2B3849), fontWeight: FontWeight.w600, fontSize: 15.sp),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 10.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 120.h, width: double.infinity,
                  decoration: BoxDecoration(
                    color:  const Color(0xfff2d48f).withOpacity(0.15),
                    borderRadius: BorderRadius.all(Radius.circular(10.r)),
                    border: Border.all(
                      color: Colors.grey, width: 1
                    )
                  ),
                  child: Padding(padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 30.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('\$10,000.00', style:
                          TextStyle(fontSize: 18.sp, color: const Color(0xFF6e1235), fontWeight: FontWeight.w600),),
                          Text('\$70,000.00', style:
                          TextStyle(fontSize: 18.sp, color: const Color(0xFF6e1235), fontWeight: FontWeight.w600),),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Total amount invested', style:
                          TextStyle(fontSize: 15.sp, color: Colors.grey, fontWeight: FontWeight.w500),),
                          Text('Current Value', style:
                          TextStyle(fontSize: 15.sp, color: Colors.grey, fontWeight: FontWeight.w500),),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          LinearProgressIndicator(
                            value: loadingController.value,
                          ),
                          SizedBox(height: 10.h,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(),
                              Text('5th May, 2023', style: TextStyle(color: Colors.black,
                              fontWeight: FontWeight.w500, fontSize: 14.sp
                              ),)
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  ),
                ),
                SizedBox(height: 20.h,),
                Align(
                 alignment: Alignment.center,
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     options(AntDesign.plus, 'Top-Up', Colors.green.shade50, Colors.green),
                     options(AntDesign.barchart, 'Earnings', Colors.red.shade50, Colors.red),
                     options(AntDesign.setting, 'Customize', Colors.blue.shade50, Colors.blue),
                   ],
                 ),
                ),
                SizedBox(height: 30.h,),
                Text('You invested in',
                  style: TextStyle(fontSize: 18.sp,
                    fontWeight: FontWeight.w600, color: const Color(0xFF2B3849),),),
                SizedBox(height: 15.h,),
                Container(
                  height: 70.h, width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10.r)),
                      border: Border.all(
                          color: Colors.grey, width: 1
                      )
                  ),
                  child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 10.r,
                            backgroundColor: Colors.purple.shade700,
                            child: Center(child: Text('D', style:TextStyle(fontSize: 12.sp, color: Colors.white),),),
                          ),
                          SizedBox(width: 10.w,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('DefiPulse Index', style:
                              TextStyle(fontSize: 14.sp, color: Colors.purple.shade400, fontWeight: FontWeight.w500),),
                              Text('\$0.0026', style:
                              TextStyle(fontSize: 14.sp, color: Colors.grey, fontWeight: FontWeight.w600),),

                            ],
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(),
                          Text('+7.84%', style:
                          TextStyle(fontSize: 14.sp, color: Colors.green, fontWeight: FontWeight.w600),),

                        ],
                      )
                    ],
                  ),
                  ),
                ),
                SizedBox(height: 25.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Recent transaction',
                      style: TextStyle(fontSize: 18.sp,
                        fontWeight: FontWeight.w500, color: const Color(0xFF2B3849),),),
                    Text('See all',
                      style: TextStyle(fontSize: 15.sp,
                        fontWeight: FontWeight.w500, color: const Color(0xFF6e1235),),),
                  ],
                ),
                SizedBox(height: 10.h,),
              ],
            ),
            ),
            SingleChildScrollView(
                scrollDirection: Axis.vertical,
              child: Column(
              children: [
                list(AntDesign.plus, 'Payout for my new car', 'January 5, 2020', 'Pending', '\$10,000', 'Transaction Status', Colors.yellow.shade50, Colors.yellow),
                SizedBox(height: 15.h),
                list(AntDesign.arrowsalt, 'Fund Plan', 'January 8, 2020', 'Successful', '\$10,000', 'Transaction Status', Colors.green.shade50, Colors.green.shade700),
                SizedBox(height: 15.h),
                list(AntDesign.arrowsalt, 'Fund Plan', 'January 8, 2020', 'Successful', '\$10,000', 'Transaction Status', Colors.green.shade50, Colors.green.shade700),
              ],
              )
            )
          ],
        ),
      ),

    );
  }

  Column options(IconData iconData, String text, Color backCl, Color cl){
    return Column(
    children: [
      CircleAvatar(
        radius: 35.r,
        backgroundColor: backCl,
        child: Center(child: Icon(iconData, color: cl, size: 25.sp,),),
      ),
      SizedBox(height: 7.h,),
      Text(text,
        style: TextStyle(fontSize: 15.sp,
          fontWeight: FontWeight.w600, color: const Color(0xFF2B3849),),),
    ],
    );
  }

  Widget list(IconData iconData, String text, String date, String status, String amount, String transaction, Color backCl, Color cl){
    return Container(
          height: 120.h,
          width: double.infinity,
          color: Colors.white,
          child: Padding(padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 25.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 15.r,
                    backgroundColor: backCl,
                    child: Center(child: Icon(iconData, color: cl, size: 20.sp,),),
                  ),
                  SizedBox(width: 10.w,),
                  Text(text, style: TextStyle(color: Colors.black87, fontSize: 15.sp, fontWeight: FontWeight.w500),)
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(date, style: TextStyle(color: Colors.black54, fontSize: 15.sp, fontWeight: FontWeight.w500),),
                  Text(amount, style: TextStyle(color: Colors.black, fontSize: 15.sp, fontWeight: FontWeight.w500),)
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(transaction, style: TextStyle(color: const Color(0xFF2B3849), fontSize: 15.sp, fontWeight: FontWeight.w600),),
                  Text(status, style: TextStyle(color: cl, fontSize: 15.sp, fontWeight: FontWeight.w500),)
                ],
              ),
            ],
          ),
          ),
        );
  }
}
