import 'package:flutter/material.dart';
import 'package:netninjaflutter/FoodMenuPractice/cirle_image.dart';

class AuthorCard extends StatefulWidget {
  final String authorName;
  final String title;
  final ImageProvider imageProvider;

  const AuthorCard({
    Key? key,
    required this.imageProvider,
    required this.authorName,
    required this.title
  }) : super(key: key);

  @override
  State<AuthorCard> createState() => _AuthorCardState();
}

class _AuthorCardState extends State<AuthorCard> {

  bool isSelected=true;
  String status = 'Added to favorite';
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          CircleImage(imageProvider: widget.imageProvider, imageRadius: 28,),
          const SizedBox(width: 8,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(widget.authorName, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
              Text(widget.title, style: TextStyle(fontSize: 15, color: Colors.white)),
            ],
          ),
          const SizedBox(width: 25,),
          IconButton(
            onPressed: () {
              setState(() {
                isSelected = !isSelected;
                if(isSelected==true) status = 'Removed from favourite';
                else status = 'Added To Favorite!';
              });
              var snackBar = SnackBar(content: Text(status, style: TextStyle(color: Colors.black)),backgroundColor: Colors.white,);
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            icon: Icon(
                isSelected ? Icons.favorite_border: Icons.favorite,
                color: isSelected? Colors.white:Colors.red,
            ),
            iconSize: 30,
          ),
        ],
      ),
    );
  }
}

//
// class AuthorCard extends StatelessWidget {
//  
//
//   const AuthorCard({
//     Key? key,
//     required this.authorName,
//     required this.title,
//     required this.imageProvider,
//     required this.isSelected,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(16),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: <Widget>[
//           CircleImage(imageProvider: imageProvider, imageRadius: 28,),
//           const SizedBox(width: 8,),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//               Text(authorName, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
//               Text(title, style: TextStyle(fontSize: 15, color: Colors.white)),
//             ],
//           ),
//           const SizedBox(width: 25,),
//           IconButton(
//             onPressed: () {
//               const snackBar = SnackBar(content: Text('Press Favorite', style: TextStyle(color: Colors.black)),backgroundColor: Colors.white,);
//               ScaffoldMessenger.of(context).showSnackBar(snackBar);
//             },
//             icon: const Icon(Icons.favorite_border, color: Colors.white),
//             iconSize: 30,
//           ),
//         ],
//       ),
//     );
//   }
// }
