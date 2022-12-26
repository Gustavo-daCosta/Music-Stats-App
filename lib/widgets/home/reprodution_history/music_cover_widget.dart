import 'package:flutter/material.dart';

Widget musicCoverLeading(BuildContext context, {required String musicImagePath}) {
  return Padding(
    padding: const EdgeInsets.only(left: 8.0),
    child: SizedBox(
      width: 58,
      height: 58,
      child: Stack(
        children: <Widget>[

          // Container preto da parte de trás
          Positioned(
            top: 3,
            bottom: 0,
            left: 2,
            right: 0,
            child: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                shape: BoxShape.circle,
              ),
            ),
          ),

          // Container para imagem do álbum
          Container(
            width: 55,
            height: 55,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Theme.of(context).primaryColor,
              image: DecorationImage(
                image: AssetImage(
                  musicImagePath,
                ),
                fit: BoxFit.fill,
              ),
              border: Border.all(
                color: Theme.of(context).primaryColor,
                width: 2,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
