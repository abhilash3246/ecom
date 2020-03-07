
import 'package:flutter/material.dart';
import 'package:ecom/config/theme.dart';
import 'package:ecom/data/fake_repositories/models/category.dart';

class OpenFlutterCategoryTile extends StatelessWidget {
  final Category category;
  final double height;
  final double width;

  const OpenFlutterCategoryTile(
      {Key key, this.category, this.height, this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _theme = Theme.of(context);
    return Padding(
        padding: EdgeInsets.only(bottom: AppSizes.sidePadding),
        child: Container(
            padding: EdgeInsets.only(left: AppSizes.sidePadding),
            height: height,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(AppSizes.imageRadius),
            ),
            child: Row(
              children: <Widget>[
                Container(
                    alignment: Alignment.centerLeft,
                    width: width - 200.0,
                    child: Text(category.title,
                        style: _theme.textTheme.display2)),
                Container(
                    width: 200,
                    alignment: Alignment.centerRight,
                    child: Image(image: AssetImage(category.image)))
              ],
            )));
  }
}