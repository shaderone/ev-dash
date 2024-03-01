import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_mdi_icons/flutter_mdi_icons.dart';
//import 'package:flutter_svg/flutter_svg.dart';

class BatteryInfo extends StatelessWidget {
  const BatteryInfo({
    Key? key,
    required this.constraints,
  }) : super(key: key);

  final BoxConstraints constraints;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: constraints.maxWidth * 0.21,
      height: constraints.maxHeight * 0.11,
      child: DefaultTextStyle(
        style: Theme.of(context).textTheme.titleMedium!,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                /*const Text("05:21 PM"),
                const Spacer(),
                SvgPicture.asset(
                  "assets/icons/sun.svg",
                  height: 32,
                ),
                const SizedBox(width: 4),
                const Text("18 °C"), */
                Text(
                  "48 V",
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(width: 10),
                Icon(Mdi.carBattery),
                SizedBox(width: 10),
                Text(
                  "50 °C",
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            Text(
              " | ",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w100, color: Colors.amber),
            ),
            Row(
              children: [
                Icon(Icons.thermostat),
                SizedBox(width: 10),
                Text(
                  "60 °C",
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
