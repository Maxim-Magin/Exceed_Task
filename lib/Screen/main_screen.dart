
import 'package:flutter/material.dart';
import 'package:flutter_app/Bloc/bloc_provider.dart';
import 'package:flutter_app/Bloc/main_bloc.dart';

class MainScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>{

  MainBloc _bloc;
  
  @override
  void initState() {
    super.initState();

    _bloc = BlocProvider.of(context);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main screen"),
      ),
      body: Center(
        child: Container(
          width: 150,
          child: TextField(
            onChanged: (String value) => _bloc.inName.add(value),
          )
        ),
      ),
    );
  }
}