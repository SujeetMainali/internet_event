import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inyernet_event/blocs/Internet_Bloc/internet_bloc.dart';
import 'package:inyernet_event/blocs/Internet_Bloc/internet_state.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: BlocBuilder<InternetBloc, InternetState>(
            builder: (context, state) {
              if (state is InternetGainedState) {
                return Text("Connected");
              }
               else if (state is InternetLostState) {
                return Text("Disconnected");
              } 
              else {
                return Text("Loading...");
              }
            },
          ),
        ),
      ),
    );
  }
}
