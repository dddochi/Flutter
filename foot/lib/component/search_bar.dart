import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10.0),
      child: Row(
        children: [
          Container(
            height: 40.0,
            width: MediaQuery.of(context).size.width - 60.0,
            child: TextField(
              obscureText: false,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1.0,
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                filled: true,
                fillColor: Colors.white,
                //labelText: 'Email',
              ),
            ),
          ),
          IconButton(onPressed: (){}, icon: Icon(Icons.search),),
        ],
      ),
    );
  }
}
