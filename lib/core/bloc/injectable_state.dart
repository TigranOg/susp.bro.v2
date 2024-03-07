import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class InjectableState<T extends StatefulWidget, G extends BlocBase<S>, S> extends State<T> {
  Widget builder(BuildContext context, S state);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }

}