import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   final size = MediaQuery.sizeOf(context);
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        FilledButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              const Color(0xFFEFEFEF),
            ),
            fixedSize: MaterialStateProperty.all(
              Size(size.width*.75, 20),
            ),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
            ),
          ),
          onPressed: () {},
          child: const Center(
            child: Text(
              "Edit profile",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
          ),
        ),
        FilledButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              const Color(0xFFEFEFEF),
            ),
            fixedSize: MaterialStateProperty.all(
              Size(10, 20),
            ),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
            ),
          ),
          onPressed: () {},
          child: const Center(
            child:Icon(Icons.person_add_outlined, color: Colors.black,),
          ),
        ),
      ],
    );
  }
}
