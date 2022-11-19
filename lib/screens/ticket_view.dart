import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smevaluativo/utils/app_layout.dart';
import 'package:smevaluativo/utils/app_styles.dart';
import 'package:smevaluativo/widgets/thick_container.dart';

class TicketView extends StatelessWidget {
  const TicketView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(left: 16),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFF526799),
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(23),
                topRight: Radius.circular(21))
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("NYC",style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                      Expanded(child: Container()),
                      ThickContainer(),
                      Expanded(child: SizedBox(
                        height: 24,
                        child: LayoutBuilder(
                          builder: (BuildContext context , BoxConstraints constraints) {
                            print("The wigth is ${constraints.constrainWidth()}");
                            return Flex(
                              direction: Axis.horizontal,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.max,
                              children: List.generate((constraints.constrainWidth()/6).floor(), (index) => SizedBox(
                                  width: 3, height: 1, child: DecoratedBox(decoration: BoxDecoration(
                                color: Colors.white //aca es lo ultimo
                              ),),
                              )),
                            );
                          },
                        ),
                      )),
                      ThickContainer(),
                      Expanded(child: Container()),
                      Text("London",style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
