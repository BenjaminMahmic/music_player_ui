import 'package:flutter/material.dart';

import '../../../dummy_data.dart';

class SimmilarAlbums extends StatelessWidget {
  const SimmilarAlbums({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            'Simmilar Albums',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: albumsList.length,
              itemBuilder: (context, index) {
                final album = albumsList[index];

                return Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Image.asset(
                    album.albumPhoto,
                    height: 100,
                    width: 100,
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
