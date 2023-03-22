// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class peopleWidget extends StatelessWidget {
  peopleWidget({
    super.key,
  });

  final List<String> _imageUrls = [
    "https://cdn.pixabay.com/photo/2015/01/08/18/29/entrepreneur-593358__340.jpg",
    "https://www.crushpixel.com/big-static13/preview4/solo-backpacker-man-travel-activity-1228400.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcCRDReiTGl2iHorQTS4KDqHOrb8AlDpQkxQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBJ5aHCObgX-aMlpY2j_eJsehDW4qw7kWI6A&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnR1hE_YbQJNumnL64OR-9aMXuTxE_7nbpuQ&usqp=CAU",
    "https://www.wheninmanila.com/wp-content/uploads/2017/06/Louis-Tomlinson-e1498462585330.jpg",
    "https://media.zenfs.com/en/sheknows_79/a35f0965fb4f5207b4c126015263e3fc",
    "https://img.kpopmap.com/342x0/2018/04/Sandy-profile-ha-sunho.jpg",
    "https://www.euromonitor.com/globalassets/people/Stephen-Dutton.jpg?mode=crop&width=750&quality=80",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQW2g2aYXX8VURrrSkkfAwTNMHw_vct3ZISkw&usqp=CAU",
    "https://www.famousbirthdays.com/faces/ehrenreich-alden-image.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJDn5QeoXKSNGYcg1gKHuR2QctK_p8xDdm2g&usqp=CAU"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: GridView.builder(
            itemCount: _imageUrls.length,
            scrollDirection: Axis.vertical,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
            ),
            itemBuilder: (BuildContext context, int index) {
              return GridTile(
                footer: GridTileBar(
                  backgroundColor: Colors.black54,
                  title: Text('Member Id ${index + 1}'),
                ),
                child: Image.network(_imageUrls[index], fit: BoxFit.cover),
              );
            },
          ),
        ),
      ),
    );
  }
}
