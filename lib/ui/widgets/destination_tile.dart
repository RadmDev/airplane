import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class DestinationTile extends StatelessWidget {
  final String name;
  final String city;
  final String imageUrl;
  final double rating;

  const DestinationTile({
    super.key,
    required this.name,
    required this.city,
    required this.imageUrl,
    this.rating = 0.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 16,
      ),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        children: [
          Container(
            width: 70,
            height: 70,
            margin: const EdgeInsets.only(
              right: 16,
            ),
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(18)),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    imageUrl,
                  ),
                )),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: medium,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  city,
                  style: greyTextStyle.copyWith(
                    fontWeight: light,
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 20,
                height: 20,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/icon_star.png',
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  left: 2,
                ),
                child: Text(
                  rating.toString(),
                  style: blackTextStyle.copyWith(
                    fontWeight: medium,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
