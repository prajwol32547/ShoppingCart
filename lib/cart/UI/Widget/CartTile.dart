import 'package:flutter/material.dart';

Widget CartTile(List product) {
  return ListTile(
    autofocus: true,
    leading: SizedBox(
      height: 100,
      width: 70,
      child: Card(
        child: Text(product[2]),
      ),
    ),
    title: Text(product[0]),
    subtitle: Text(product[1]),
    trailing: Text(product[3].toString()),
  );
}
