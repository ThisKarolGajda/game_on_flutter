import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:math';

class BlocLoadingWidget<B extends BlocBase<S>, S> extends StatefulWidget {
  final Widget Function(BuildContext, S) builder;
  final Type expectedState;
  final String heroTag;

  const BlocLoadingWidget({
    super.key,
    required this.builder,
    required this.expectedState,
    this.heroTag = '',
  });

  @override
  BlocLoadingWidgetState<B, S> createState() => BlocLoadingWidgetState<B, S>();
}

class BlocLoadingWidgetState<B extends BlocBase<S>, S> extends State<BlocLoadingWidget<B, S>> {
  Widget? _oldWidget;

  @override
  Widget build(BuildContext context) {
    final String uniqueHeroTag = widget.heroTag.isEmpty ? _generateUniqueHeroTag() : widget.heroTag;

    return BlocBuilder<B, S>(
      builder: (context, state) {
        if (state.runtimeType == widget.expectedState) {
          _oldWidget = widget.builder(context, state);
        }

        return Hero(
          tag: uniqueHeroTag,
          child: _oldWidget ?? Container(),
        );
      },
    );
  }

  String _generateUniqueHeroTag() {
    final random = Random();
    return 'hero_tag_${random.nextInt(1000000)}';
  }
}
