import 'package:flutter/material.dart';

class searchField extends StatefulWidget {
  searchField({super.key});

  @override
  State<searchField> createState() => _searchFieldState();
}

class _searchFieldState extends State<searchField> {
  var searchController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) {
        searchController.text;
      },
      controller: searchController,
      decoration:
      InputDecoration(
          prefixIcon: Icon(Icons.close),
          suffixIcon: Icon(Icons.search),
          prefixIconColor: Colors.green,
          suffixIconColor: Colors.green,
          hintText: "enter search item",
          fillColor: Colors.white,
          filled: true,
          focusColor: Colors.white,
          contentPadding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide(
                color: Colors.white,
              )
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide(
                  color: Colors.white
              )
          )
      )

      ,
    );
  }
}
