import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ecom/data/fake_repositories/product_repository.dart';
import 'package:ecom/presentation/features/cart/views/cart_view.dart';
import 'package:ecom/presentation/widgets/widgets.dart';
import 'package:ecom/presentation/features/wrapper.dart';

import 'cart.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: OpenFlutterScaffold(
        background: null,
        title: null,
        body: BlocProvider<CartBloc>(
            create: (context) {
              return CartBloc(productRepository: ProductRepository())
                ..add(CartLoadedEvent());
            },
            child: CartWrapper()),
        bottomMenuIndex: 2,
      ),
    );
  }
}

class CartWrapper extends StatefulWidget {
  @override
  _CartWrapperState createState() => _CartWrapperState();
}

class _CartWrapperState extends OpenFlutterWrapperState<CartWrapper> {
  //State createState() => OpenFlutterWrapperState();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
        builder: (BuildContext context, CartState state) {
          return getPageView(<Widget>[CartView(changeView: changePage)]);
        });
  }
}