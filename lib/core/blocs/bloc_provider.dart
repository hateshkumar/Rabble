import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import 'base_bloc.dart';

class BlocProvider<T extends RabbleBaseBloc> extends StatelessWidget {
  final Create<T> create;
  final bool lazy;

  final Widget Function(BuildContext context, T value) builder;

  const BlocProvider({
    Key? key,
    required this.create,
    required this.builder,
    this.lazy = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider<T>(
      create: create,
      lazy: lazy,
      dispose: (context, bloc) => bloc.dispose(context),
      child: Consumer<T>(
        // Don't actually know when child would ever be useful so leaving it out
        builder: (context, bloc, child) => builder(context, bloc),
      ),
    );
  }
}
