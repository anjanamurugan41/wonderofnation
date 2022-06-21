
import 'package:flutter/material.dart';
import 'package:oo/homePage/registerprofile.dart';



import '../constants/colors.dart';
import '../constants/mathUtils.dart';
import '../screens/login.dart';



class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.indigo900,
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                color: ColorConstant.indigo900,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: getVerticalSize(
                          12.00,
                        ),
                        bottom: getVerticalSize(
                          20.00,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              left: getHorizontalSize(
                                20.00,
                              ),
                              right: getHorizontalSize(
                                20.00,
                              ),
                            ),
                            child: Image.asset(
                              "assets/images/img_rectangle180.png",
                              height: getVerticalSize(
                                113.00,
                              ),
                              width: getHorizontalSize(
                                154.00,
                              ),

                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(
                                top: getVerticalSize(
                                  9.00,
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        99.00,
                                      ),
                                    ),
                                    child: GestureDetector(onTap: (){
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) =>  LoginScreen()),
                                      );
                                    },
                                      child: Text(
                                        "Login",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          color: ColorConstant.whiteA700,
                                          fontSize: getFontSize(
                                            18,
                                          ),
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        44.00,
                                      ),
                                      right: getHorizontalSize(
                                        99.00,
                                      ),
                                    ),
                                    child: Text(
                                      "Register",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: ColorConstant.orange900,
                                        fontSize: getFontSize(
                                          18,
                                        ),
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: getHorizontalSize(
                                  20.00,
                                ),
                                top: getVerticalSize(
                                  39.00,
                                ),
                                right: getHorizontalSize(
                                  20.00,
                                ),
                              ),
                              child: Text(
                                "User Name",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: ColorConstant.whiteA700,
                                  fontSize: getFontSize(
                                    12,
                                  ),
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: getHorizontalSize(
                                20.00,
                              ),
                              top: getVerticalSize(
                                14.00,
                              ),
                              right: getHorizontalSize(
                                20.00,
                              ),
                            ),
                            child: Container(
                              height: getVerticalSize(
                                39.00,
                              ),
                              width: getHorizontalSize(
                                320.00,
                              ),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: 'Enter your name',
                                  hintStyle: TextStyle(
                                    fontSize: getFontSize(
                                      12.0,
                                    ),
                                    color: ColorConstant.gray400,
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        5.00,
                                      ),
                                    ),
                                    borderSide: BorderSide(
                                      color: ColorConstant.bluegray100,
                                      width: 1,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        5.00,
                                      ),
                                    ),
                                    borderSide: BorderSide(
                                      color: ColorConstant.bluegray100,
                                      width: 1,
                                    ),
                                  ),
                                  filled: true,
                                  fillColor: ColorConstant.indigo900,
                                  isDense: true,
                                  contentPadding: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      18.00,
                                    ),
                                    top: getVerticalSize(
                                      13.03,
                                    ),
                                    bottom: getVerticalSize(
                                      13.03,
                                    ),
                                  ),
                                ),
                                style: TextStyle(
                                  color: ColorConstant.gray400,
                                  fontSize: getFontSize(
                                    12.0,
                                  ),
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: getHorizontalSize(
                                  20.00,
                                ),
                                top: getVerticalSize(
                                  20.00,
                                ),
                                right: getHorizontalSize(
                                  20.00,
                                ),
                              ),
                              child: Text(
                                "Email Id",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: ColorConstant.whiteA700,
                                  fontSize: getFontSize(
                                    12,
                                  ),
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: getHorizontalSize(
                                20.00,
                              ),
                              top: getVerticalSize(
                                14.00,
                              ),
                              right: getHorizontalSize(
                                20.00,
                              ),
                            ),
                            child: Container(
                              height: getVerticalSize(
                                39.00,
                              ),
                              width: getHorizontalSize(
                                320.00,
                              ),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: 'Enter your email id',
                                  hintStyle: TextStyle(
                                    fontSize: getFontSize(
                                      12.0,
                                    ),
                                    color: ColorConstant.gray400,
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        5.00,
                                      ),
                                    ),
                                    borderSide: BorderSide(
                                      color: ColorConstant.bluegray100,
                                      width: 1,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        5.00,
                                      ),
                                    ),
                                    borderSide: BorderSide(
                                      color: ColorConstant.bluegray100,
                                      width: 1,
                                    ),
                                  ),
                                  filled: true,
                                  fillColor: ColorConstant.indigo900,
                                  isDense: true,
                                  contentPadding: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      18.00,
                                    ),
                                    top: getVerticalSize(
                                      13.03,
                                    ),
                                    bottom: getVerticalSize(
                                      13.03,
                                    ),
                                  ),
                                ),
                                style: TextStyle(
                                  color: ColorConstant.gray400,
                                  fontSize: getFontSize(
                                    12.0,
                                  ),
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: getHorizontalSize(
                                  20.00,
                                ),
                                top: getVerticalSize(
                                  21.00,
                                ),
                                right: getHorizontalSize(
                                  20.00,
                                ),
                              ),
                              child: Text(
                                "Mobile No.",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: ColorConstant.whiteA700,
                                  fontSize: getFontSize(
                                    12,
                                  ),
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: getHorizontalSize(
                                20.00,
                              ),
                              top: getVerticalSize(
                                14.00,
                              ),
                              right: getHorizontalSize(
                                20.00,
                              ),
                            ),
                            child: Container(
                              height: getVerticalSize(
                                39.00,
                              ),
                              width: getHorizontalSize(
                                320.00,
                              ),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: 'Enter your mobile no.',
                                  hintStyle: TextStyle(
                                    fontSize: getFontSize(
                                      12.0,
                                    ),
                                    color: ColorConstant.gray400,
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        5.00,
                                      ),
                                    ),
                                    borderSide: BorderSide(
                                      color: ColorConstant.bluegray100,
                                      width: 1,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        5.00,
                                      ),
                                    ),
                                    borderSide: BorderSide(
                                      color: ColorConstant.bluegray100,
                                      width: 1,
                                    ),
                                  ),
                                  filled: true,
                                  fillColor: ColorConstant.indigo900,
                                  isDense: true,
                                  contentPadding: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      18.00,
                                    ),
                                    top: getVerticalSize(
                                      13.03,
                                    ),
                                    bottom: getVerticalSize(
                                      13.03,
                                    ),
                                  ),
                                ),
                                style: TextStyle(
                                  color: ColorConstant.gray400,
                                  fontSize: getFontSize(
                                    12.0,
                                  ),
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: getHorizontalSize(
                                  20.00,
                                ),
                                top: getVerticalSize(
                                  20.00,
                                ),
                                right: getHorizontalSize(
                                  20.00,
                                ),
                              ),
                              child: Text(
                                "Password",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: ColorConstant.whiteA700,
                                  fontSize: getFontSize(
                                    12,
                                  ),
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            margin: EdgeInsets.only(
                              left: getHorizontalSize(
                                20.00,
                              ),
                              top: getVerticalSize(
                                14.00,
                              ),
                              right: getHorizontalSize(
                                20.00,
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.gray200,
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  5.00,
                                ),
                              ),
                              border: Border.all(
                                color: ColorConstant.bluegray100,
                                width: getHorizontalSize(
                                  1.00,
                                ),
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: getVerticalSize(
                                    39.00,
                                  ),
                                  width: getHorizontalSize(
                                    320.00,
                                  ),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: 'Enter your password',
                                      hintStyle: TextStyle(
                                        fontSize: getFontSize(
                                          12.0,
                                        ),
                                        color: ColorConstant.gray400,
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(
                                          getHorizontalSize(
                                            5.00,
                                          ),
                                        ),
                                        borderSide: BorderSide(
                                          color: ColorConstant.bluegray100,
                                          width: 1,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(
                                          getHorizontalSize(
                                            5.00,
                                          ),
                                        ),
                                        borderSide: BorderSide(
                                          color: ColorConstant.bluegray100,
                                          width: 1,
                                        ),
                                      ),
                                      suffixIcon: Padding(
                                        padding: EdgeInsets.only(
                                          left: getHorizontalSize(
                                            10.00,
                                          ),
                                          right: getHorizontalSize(
                                            18.00,
                                          ),
                                        ),
                                        child: Container(
                                            height: getSize(
                                              12.00,
                                            ),
                                            width: getSize(
                                              12.00,
                                            ),
                                            child: Icon(Icons.visibility)
                                        ),
                                      ),
                                      suffixIconConstraints: BoxConstraints(
                                        minWidth: getSize(
                                          12.00,
                                        ),
                                        minHeight: getSize(
                                          12.00,
                                        ),
                                      ),
                                      filled: true,
                                      fillColor: ColorConstant.indigo900,
                                      isDense: true,
                                      contentPadding: EdgeInsets.only(
                                        left: getHorizontalSize(
                                          18.00,
                                        ),
                                        top: getVerticalSize(
                                          13.03,
                                        ),
                                        bottom: getVerticalSize(
                                          13.03,
                                        ),
                                      ),
                                    ),
                                    style: TextStyle(
                                      color: ColorConstant.gray400,
                                      fontSize: getFontSize(
                                        12.0,
                                      ),
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: getHorizontalSize(
                                  20.00,
                                ),
                                top: getVerticalSize(
                                  20.00,
                                ),
                                right: getHorizontalSize(
                                  20.00,
                                ),
                              ),
                              child: Text(
                                "Confirm Password",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: ColorConstant.whiteA700,
                                  fontSize: getFontSize(
                                    12,
                                  ),
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: getHorizontalSize(
                                20.00,
                              ),
                              top: getVerticalSize(
                                14.00,
                              ),
                              right: getHorizontalSize(
                                20.00,
                              ),
                            ),
                            child: Container(
                              height: getVerticalSize(
                                39.00,
                              ),
                              width: getHorizontalSize(
                                320.00,
                              ),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: 'Enter your password',
                                  hintStyle: TextStyle(
                                    fontSize: getFontSize(
                                      12.0,
                                    ),
                                    color: ColorConstant.gray400,
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        5.00,
                                      ),
                                    ),
                                    borderSide: BorderSide(
                                      color: ColorConstant.bluegray100,
                                      width: 1,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        5.00,
                                      ),
                                    ),
                                    borderSide: BorderSide(
                                      color: ColorConstant.bluegray100,
                                      width: 1,
                                    ),
                                  ),
                                  suffixIcon: Padding(
                                    padding: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        10.00,
                                      ),
                                      right: getHorizontalSize(
                                        18.00,
                                      ),
                                    ),
                                    child: Container(
                                        height: getSize(
                                          12.00,
                                        ),
                                        width: getSize(
                                          12.00,
                                        ),
                                        child: Icon(Icons.visibility)
                                    ),
                                  ),
                                  suffixIconConstraints: BoxConstraints(
                                    minWidth: getSize(
                                      12.00,
                                    ),
                                    minHeight: getSize(
                                      12.00,
                                    ),
                                  ),
                                  filled: true,
                                  fillColor: ColorConstant.indigo900,
                                  isDense: true,
                                  contentPadding: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      18.00,
                                    ),
                                    top: getVerticalSize(
                                      13.03,
                                    ),
                                    bottom: getVerticalSize(
                                      13.03,
                                    ),
                                  ),
                                ),
                                style: TextStyle(
                                  color: ColorConstant.gray400,
                                  fontSize: getFontSize(
                                    12.0,
                                  ),
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: getHorizontalSize(
                                20.00,
                              ),
                              top: getVerticalSize(
                                27.00,
                              ),
                              right: getHorizontalSize(
                                20.00,
                              ),
                            ),
                            child: GestureDetector(onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>  RegisterProfile()),
                              );
                            },
                              child: Container(
                                alignment: Alignment.center,
                                height: getVerticalSize(
                                  42.00,
                                ),
                                width: getHorizontalSize(
                                  320.00,
                                ),
                                decoration: BoxDecoration(
                                  color: ColorConstant.orange900,
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      5.00,
                                    ),
                                  ),
                                ),
                                child: Text(
                                  "Continue",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: ColorConstant.whiteA700,
                                    fontSize: getFontSize(
                                      14,
                                    ),
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              width: getHorizontalSize(
                                320.00,
                              ),
                              margin: EdgeInsets.only(
                                left: getHorizontalSize(
                                  26.00,
                                ),
                                top: getVerticalSize(
                                  8.00,
                                ),
                                right: getHorizontalSize(
                                  14.00,
                                ),
                              ),
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text:
                                      'By registering you are accepting our ',
                                      style: TextStyle(
                                        color: ColorConstant.whiteA700,
                                        fontSize: getFontSize(
                                          12,
                                        ),
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                        height: 1.33,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'terms of use',
                                      style: TextStyle(
                                        color: ColorConstant.orange900,
                                        fontSize: getFontSize(
                                          12,
                                        ),
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                        height: 1.33,
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' and ',
                                      style: TextStyle(
                                        color: ColorConstant.whiteA700,
                                        fontSize: getFontSize(
                                          12,
                                        ),
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                        height: 1.33,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'privacy policy',
                                      style: TextStyle(
                                        color: ColorConstant.orange900,
                                        fontSize: getFontSize(
                                          12,
                                        ),
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                        height: 1.33,
                                      ),
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}