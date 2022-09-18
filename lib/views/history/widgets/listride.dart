import 'package:flutter/material.dart';
import 'package:services_uber/model/list_ride_model.dart';

class ListRide extends StatelessWidget {
  const ListRide({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: rides.length,
      itemBuilder: (context, index) => ItemRide(
        ride: rides[index],
      ),
    );
  }
}

class ItemRide extends StatelessWidget {
  const ItemRide({
    Key? key,
    required this.ride,
  }) : super(key: key);

  final ListRideModel ride;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120.0,
      margin: const EdgeInsets.only(left: 0.0, right: 0.0),
      padding: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        color: Colors.transparent, //Color.fromARGB(255, 6, 26, 177),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child:

          // Column(
          //   children: [
          //     Image.asset(ride.path, height: 50.0),
          //     const SizedBox(height: 5.0),
          //     Text(
          //       ride.title,
          //       style: const TextStyle(
          //         fontSize: 18.0,
          //         fontWeight: FontWeight.bold,
          //         color: Colors.black,
          //       ),
          //     ),
          //     const SizedBox(height: 8.0),
          //     Text(
          //       ride.description,
          //       overflow: TextOverflow.ellipsis,
          //       maxLines: 2,
          //       style: const TextStyle(
          //         fontSize: 14.0,
          //         color: Colors.black26,
          //       ),
          //     ),
          //   ],
          // ),
          Card(
        color: Colors.white,
        shadowColor: Colors.black12,
        elevation: 0.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Container(
          width: double.infinity,
          height: 100.0,
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Image.asset(ride.path),
              const SizedBox(width: 15.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      ride.title,
                      style: const TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      ride.description,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: const TextStyle(
                        fontSize: 14.0,
                        color: Colors.black26,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
