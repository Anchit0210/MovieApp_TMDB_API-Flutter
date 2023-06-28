import 'package:flutter/material.dart';
import 'package:movie_app/util/text.dart';

class TV extends StatelessWidget {
  final List tv;
  const TV({super.key, required this.tv});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          modified_text(text: 'Popular TV Show', color: Colors.white, size: 26),
          SizedBox(height: 10,),
          Container(
            height: 200,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: tv.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {},
                    child: Container(
                      width: 250,
                      padding: EdgeInsets.all(5),
                      child: Column(
                        children: [
                          Container(
                            width: 250,
                            height: 140,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage( image: NetworkImage('https://image.tmdb.org/t/p/w500/'+tv[index]['poster_path']
                                ), fit: BoxFit.cover
                            )),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            child: modified_text(text: tv[index]['original_name']!=null?tv[index]['original_name']:"Loading", color: Colors.white, size: 14,),
                          )
                        ],
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
