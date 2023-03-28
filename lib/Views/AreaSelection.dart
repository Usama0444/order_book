import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:order_book/constants.dart';

class AreaSelection extends StatefulWidget {
  const AreaSelection({super.key});

  @override
  State<AreaSelection> createState() => _AreaSelectionState();
}

class _AreaSelectionState extends State<AreaSelection> {
  String dropdownValue = 'One';

  List<String> options = ['One', 'Two', 'Three'];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: baseColor,
        body: Column(
          children: [
            Container(
              height: 40.h,
              color: greyColor,
              child: Padding(
                padding: EdgeInsets.only(left: 5.h),
                child: Row(
                  children: [
                    Text(
                      'OrderBook',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 18.sp,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10.w,
                vertical: 20.h,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  myText('Area Selection', 16.sp),
                  Container(
                    width: double.infinity,
                    height: 2,
                    margin: EdgeInsets.symmetric(vertical: 10.h),
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color.fromARGB(255, 11, 24, 36), Colors.blue],
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      myText('Section', 18.sp),
                      Container(
                        height: 60.h,
                        width: 200.w,
                        color: Colors.white,
                        child: Center(
                          child: DropdownButton<String>(
                            value: dropdownValue,
                            onChanged: (newValue) {
                              setState(() {
                                dropdownValue = newValue!;
                              });
                            },
                            underline: const SizedBox(),
                            items: options.map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem(
                                value: value,
                                child: SizedBox(
                                  width: 150.w,
                                  child: ListTile(
                                    title: Text(value),
                                    // trailing: Radio(
                                    //   value: value,
                                    //   groupValue: value,
                                    //   onChanged: (val) {},
                                    // ),
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      myText('Subsection', 18.sp),
                      Container(
                        height: 60.h,
                        width: 200.w,
                        color: Colors.white,
                        child: Center(
                          child: DropdownButton<String>(
                            value: dropdownValue,
                            onChanged: (newValue) {
                              setState(() {
                                dropdownValue = newValue!;
                              });
                            },
                            underline: const SizedBox(),
                            items: options.map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem(
                                value: value,
                                child: SizedBox(
                                  width: 150.w,
                                  child: ListTile(
                                    title: Text(value),
                                    // trailing: Radio(
                                    //   value: value,
                                    //   groupValue: value,
                                    //   onChanged: (val) {},
                                    // ),
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      myText('Area', 18.sp),
                      Container(
                        height: 60.h,
                        width: 200.w,
                        color: Colors.white,
                        child: Center(
                          child: DropdownButton<String>(
                            value: dropdownValue,
                            onChanged: (newValue) {
                              setState(() {
                                dropdownValue = newValue!;
                              });
                            },
                            underline: const SizedBox(),
                            items: options.map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem(
                                value: value,
                                child: SizedBox(
                                  width: 150.w,
                                  child: ListTile(
                                    title: Text(value),
                                    // trailing: Radio(
                                    //   value: value,
                                    //   groupValue: value,
                                    //   onChanged: (val) {},
                                    // ),
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 100.w,
                          height: 40.h,
                          color: btnColor,
                          child: Center(
                            child: Text(
                              'Upgrade',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 20.sp,
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 100.w,
                          height: 40.h,
                          color: btnColor,
                          child: Center(
                            child: Text(
                              'Clear DB',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 20.sp,
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 100.w,
                          height: 40.h,
                          color: btnColor,
                          child: Center(
                            child: Text(
                              'Send DB',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 20.sp,
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 100.w,
                          height: 40.h,
                          color: btnColor,
                          child: Center(
                            child: Text(
                              'Book',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 20.sp,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  myText(txt, size) {
    return Text(
      txt,
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w500,
        fontSize: size,
      ),
    );
  }
}

class MyDropDown extends StatefulWidget {
  const MyDropDown({super.key});

  @override
  State<MyDropDown> createState() => _MyDropDownState();
}

class _MyDropDownState extends State<MyDropDown> {
  String dropdownValue = 'One';

  List<String> options = ['One', 'Two', 'Three'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 50.h,
        width: 200.w,
        child: DropdownButton<String>(
          value: dropdownValue,
          onChanged: (newValue) {
            setState(() {
              dropdownValue = newValue!;
            });
          },
          items: options.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: RadioListTile<String>(
                title: Text(value),
                value: value,
                groupValue: dropdownValue,
                onChanged: (String? value) {
                  setState(() {
                    dropdownValue = value!;
                  });
                },
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
