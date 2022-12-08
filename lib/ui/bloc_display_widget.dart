import 'package:flutter/material.dart';
import '../components/count_view.dart';
import '../bloc/count_bloc.dart';

late CountBloc countBloc;

class BlocDisplayWidget extends StatefulWidget {
  const BlocDisplayWidget({Key? key}) : super(key: key);

  @override
  _BlocDisplayWidgetState createState() => _BlocDisplayWidgetState();
}

class _BlocDisplayWidgetState extends State<BlocDisplayWidget> {
  @override
  void initState() {
    super.initState();
    countBloc = CountBloc();
  }

  @override
  void dispose() {
    super.dispose();
    countBloc.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bloc 패턴"),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: CountView(),
      floatingActionButton:
          Row(mainAxisAlignment: MainAxisAlignment.end, children: [
        IconButton(
            onPressed: () {
              countBloc.add();
            },
            icon: Icon(Icons.add)),
        IconButton(
            onPressed: () {
              countBloc.remove();
            },
            icon: Icon(Icons.remove)),
      ]),
    );
  }
}
