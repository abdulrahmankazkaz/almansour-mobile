import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mac_mobile/features/car/entities/car/car.dart';

import '../../../../core/utils/resources/resources.dart';
import '../../../cart/presentation/bloc/cart_cubit/cart_cubit.dart';

class CounterWidget extends StatefulWidget {
  final int initialValue;
  final Function(int) onChanged;
  final int itemId;

  const CounterWidget({super.key, required this.initialValue, required this.onChanged, required this.itemId});

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  late int _counter;

  @override
  void initState() {
    super.initState();
    _counter = widget.initialValue;
  }


  

  Future<void> _increment() async {
    setState(() {
      _counter++;
      widget.onChanged(_counter);
    });
   await context.read<CartCubit>().increaseQuantity(widget.itemId);
  }

  Future<void> _decrement() async {
    setState(() {
      if (_counter > 0) {
        _counter--;
        widget.onChanged(_counter);
      }
    });
    await context.read<CartCubit>().decreaseQuantity(widget.itemId);

  }

  @override
  void didChangeDependencies() {
    if(context.watch<CartCubit>().getQuantityById(widget.itemId)!=null) {
      _counter = context.watch<CartCubit>().getQuantityById(widget.itemId)!;
    }
    else{
      context.watch<CartCubit>().removeItem(widget.itemId);
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        IconButton(
          padding: EdgeInsets.zero,
          icon: Icon(Icons.remove_circle_outline_outlined, size: AppSizeW.s25),
          onPressed: _decrement,
        ),
        Text(
          '$_counter',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        IconButton(
          padding: EdgeInsets.zero,
          icon: Icon(Icons.add_circle_outline_rounded, size: AppSizeW.s25),
          onPressed: _increment,
        ),
      ],
    );
  }
}