// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker/hex_color.dart';
import 'package:flutter_holo_date_picker/widget/button_custom.dart';

class DialogCustom extends StatelessWidget {
  Widget? child;
  double? height;
  BorderRadius? radius;
  Widget? footer;
  Function()? onOk;
  Function()? onCancel;
  String title;
  Widget? header;
  DialogCustom(
      {Key? key,
      required this.title,
      this.header,
      this.child,
      this.height,
      this.radius,
      this.onOk,
      this.onCancel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          width: MediaQuery.of(context).size.width - 32,
          decoration: BoxDecoration(
            borderRadius: radius ?? BorderRadius.circular(4),
            color: Colors.black,
            boxShadow: const [
              BoxShadow(
                color: Color.fromRGBO(16, 24, 40, 0.1),
                spreadRadius: -4,
                blurRadius: 24.0,
                offset: Offset(0, 20),
              ),
              BoxShadow(
                color: Color.fromRGBO(16, 24, 40, 0.04),
                spreadRadius: -4,
                blurRadius: 8,
                offset: Offset(0, 8),
              ),
            ],
          ),
          height: height ?? 300,
          child: Card(
            clipBehavior: Clip.hardEdge,
            margin: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: radius ?? BorderRadius.circular(4),
            ),
            borderOnForeground: true,
            shadowColor: Colors.white,
            child: Column(children: [
              Row(
                children: [
                  Expanded(
                    child: header ??
                        Container(
                          padding: const EdgeInsets.only(top: 20),
                          alignment: Alignment.center,
                          height: 52,
                          // color: HexColor("#000000"),
                          child: Text(
                            title,
                            style: TextStyle(
                                color: HexColor("#000000"),
                                fontSize: 24,
                                height: 1.3333,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                  ),
                ],
              ),
              Expanded(
                  child:
                      Padding(padding: const EdgeInsets.all(16), child: child)),
              footer ??
                  Row(
                    children: [
                      Expanded(
                          child: ButtonCustom(
                        borderRadius: BorderRadius.circular(0),
                        onTap: () {
                          onCancel?.call();
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          "Huỷ",
                          style: TextStyle(
                              color: HexColor("#000000"),
                              fontSize: 16,
                              height: 1.5,
                              fontWeight: FontWeight.w500),
                        ),
                        backgroundColor: HexColor("#F3F4FC"),
                      )),
                      Expanded(
                          child: ButtonCustom(
                        borderRadius: BorderRadius.circular(0),
                        onTap: () {
                          onOk?.call();
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          "Chọn",
                          style: TextStyle(
                              color: HexColor("#ffffff"),
                              fontSize: 16,
                              height: 1.5,
                              fontWeight: FontWeight.w500),
                        ),
                        backgroundColor: HexColor("#43419E"),
                      ))
                    ],
                  )
            ]),
          )),
    );
    ;
  }
}
