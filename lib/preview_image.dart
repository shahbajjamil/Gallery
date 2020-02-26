/**
 * Author: Shahbaj Jamil
 *profile: https://github.com/shahbajjamil
  */
  
import 'package:flutter/material.dart';

class PreviewImage extends StatefulWidget {
  final picDetails_view;

  PreviewImage({this.picDetails_view});
  @override
  _PreviewImageState createState() => _PreviewImageState();
}

class _PreviewImageState extends State<PreviewImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Preview'), centerTitle: true),
      body: Center(
        child: Card(
          child: Hero(
            tag: widget.picDetails_view,
            child: Material(
              child: Image.asset(
                widget.picDetails_view,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
