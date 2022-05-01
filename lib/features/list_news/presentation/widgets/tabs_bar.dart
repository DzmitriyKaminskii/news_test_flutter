import 'package:flutter/material.dart';

class TabsBar extends StatelessWidget {
  const TabsBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.grey[400],
      child: TabBar(
        indicator: BoxDecoration(
          color: Colors.grey[600],
        ),
        tabs: [
          SizedBox(
            height: 50.0,
            child: Center(
              child: Text(
                'Top Headlines',
                style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50.0,
            child: Center(
              child: Text(
                'Everything',
                style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
