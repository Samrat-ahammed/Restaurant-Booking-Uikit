// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_ui_design_task/ui/widgets/selct_buttomsheet_title_widget.dart';

Future<dynamic> bottomSheetForLoginAndCreatAccount(BuildContext context) {
  final size = MediaQuery.of(context).size;

  final controller = PageController(initialPage: 0);

  String selactButton = 'Login';

  return showModalBottomSheet(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
          topRight: Radius.circular(40), topLeft: Radius.circular(40)),
    ),
    context: context,
    builder: (context) {
      return StatefulBuilder(builder: (context, setState) {
        return Column(
          children: [
            SizedBox(
              height: size.height / 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width / 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  selectbottomTitle(
                    size,
                    'Creat Account',
                    () {
                      controller.jumpToPage(0);
                      setState(
                        () {
                          selactButton = 'Creat Account';
                        },
                      );
                    },
                    (selactButton == 'Creat Account')
                        ? Colors.grey
                        : Colors.green,
                    (selactButton == 'Creat Account')
                        ? Colors.grey
                        : Colors.green,
                  ),
                  selectbottomTitle(
                    size,
                    'Login',
                    () {
                      controller.jumpToPage(1);
                      setState(
                        () {
                          selactButton = 'Login';
                        },
                      );
                    },
                    (selactButton == 'Login') ? Colors.grey : Colors.green,
                    (selactButton == 'Login') ? Colors.grey : Colors.green,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.height / 25,
            ),
            Expanded(
              child: PageView(
                  controller: controller,
                  onPageChanged: (value) {

                  },
                  children: [
                    Container(),
                    Container(
                      color: Colors.red,
                    )
                  ]),
            ),
          ],
        );
      });
    },
  );
}
