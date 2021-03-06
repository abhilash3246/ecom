import 'package:flutter/material.dart';
import 'package:ecom/config/theme.dart';
import 'package:ecom/data/fake_repositories/models/category.dart';

class OpenFlutterCatregoryListElement extends StatelessWidget {
  final Category category;

  const OpenFlutterCatregoryListElement({Key key, this.category})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _theme = Theme.of(context);
    return Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(
            top: AppSizes.sidePadding,
            bottom: AppSizes.sidePadding,
            left: AppSizes.sidePadding * 2,
            right: AppSizes.sidePadding),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: _theme.primaryColorLight, width: 0.4),
          ),
        ),
        child: Text(category.title,
            style: _theme.textTheme.display2
                .copyWith(fontWeight: FontWeight.normal)));
  }
}