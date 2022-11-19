import 'package:flutter/cupertino.dart';
import 'package:smevaluativo/utils/app_layout.dart';
import 'package:smevaluativo/utils/app_styles.dart';

class ConcertScreen extends StatelessWidget {
  const ConcertScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width*0.6,
      height: 350,
      child: Column(
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Styles.primaryColor,
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/morat.jpg")
              )
            ),
          )
        ],
      ),
    );
  }
}
