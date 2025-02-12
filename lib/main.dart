import 'package:counter_bloc/Bloc/counter_bloc.dart';
import 'package:counter_bloc/Bloc/counter_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:BlocProvider(create: (context) => CounterBloc(0)
        ,child: MyHomePage(),)
    );
  }
}


class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Counter Bloc"),),
      body:BlocBuilder<CounterBloc,int>(
        builder: (ctx,state){
          return Center(child: Text("$state",style: TextStyle(fontSize: 20),));
        },) ,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(onPressed: (){
            BlocProvider.of<CounterBloc>(context).add(incrementCountEvent(value: 2));
          },
            child: Icon(Icons.add),
          ),
          FloatingActionButton(onPressed: (){
            // BlocProvider.of<CounterBloc>(context).add(decrementCountEvent());
            context.read<CounterBloc>().add(decrementCountEvent());
          },
            child: Icon(Icons.remove),
          )
        ],
      ),
    );
  }
}

