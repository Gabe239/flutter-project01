import 'package:flutter/material.dart';

class Library extends StatelessWidget{
  const Library({super.key});
		@override
		Widget build(BuildContext context) {
		return Scaffold(
		appBar: AppBar(
		title: const Text('Library'),
				),
		body: const Center(
		child: Text('Library'),
			),
		  );
			}
}