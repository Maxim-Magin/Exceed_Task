
import 'dart:async';

import 'file:///D:/GitHub/Example/lib/Bloc/base_bloc.dart';

class MainBloc extends BlocBase{

  final StreamController<String> _nameController = StreamController<String>();
  Sink<String> get inName => _nameController.sink;
  Stream<String> get _outName => _nameController.stream;

  MainBloc(){
    _outName.listen(_handleName);
  }

  @override
  void dispose(){
    _nameController.close();
  }

  void _handleName(String value){
    //TODO: handle value
  }

}