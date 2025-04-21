import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cubit/counter_cubit.dart';
import 'cubit/counter_state.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: PointsCounter(),
      ),
    );
  }
}

class PointsCounter extends StatelessWidget {
  const PointsCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer< CounterCubit , CounterState >(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              elevation: 3.0,
              backgroundColor: Colors.orange,
              title: const Text(
                'Points Counter',
              ),
            ),
            body: Column(
              children: [
                IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          const Text(
                            'Team A',
                            style: TextStyle(
                              fontSize: 32,
                            ),
                          ),
                          Text(
                            '${BlocProvider.of<CounterCubit>(context).teamAPoints}',
                            style: const TextStyle(
                              fontSize: 150,
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: const Size(150, 50),
                            ),
                            onPressed: (){
                              BlocProvider.of<CounterCubit>(context).teamIncrement(
                                  team: 'A',
                                  buttonNumber: 1,
                              );
                            },
                            child: const Text(
                              'Add 1 Point',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: const Size(150, 50),
                            ),
                            onPressed: (){
                              BlocProvider.of<CounterCubit>(context).teamIncrement(
                                team: 'A',
                                buttonNumber: 2,
                              );
                            },
                            child: const Text(
                              'Add 2 Points',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: const Size(150, 50),
                            ),
                            onPressed: (){
                              BlocProvider.of<CounterCubit>(context).teamIncrement(
                                team: 'A',
                                buttonNumber: 3,
                              );
                            },
                            child: const Text(
                              'Add 3 Points',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const VerticalDivider(
                        color: Colors.grey,
                        thickness: 1,
                      ),
                      Column(
                        children: [
                          const Text(
                            'Team B',
                            style: TextStyle(
                              fontSize: 32,
                            ),
                          ),
                          Text(
                            '${BlocProvider.of<CounterCubit>(context).teamBPoints}',
                            style: const TextStyle(
                              fontSize: 150,
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: const Size(150, 50),
                            ),
                            onPressed: (){
                              BlocProvider.of<CounterCubit>(context).teamIncrement(
                                team: 'B',
                                buttonNumber: 1,
                              );
                            },
                            child: const Text(
                              'Add 1 Point',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: const Size(150, 50),
                            ),
                            onPressed: (){
                              BlocProvider.of<CounterCubit>(context).teamIncrement(
                                team: 'B',
                                buttonNumber: 2,
                              );
                            },
                            child: const Text(
                              'Add 2 Points',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: const Size(150, 50),
                            ),
                            onPressed: (){
                              BlocProvider.of<CounterCubit>(context).teamIncrement(
                                team: 'B',
                                buttonNumber: 3,
                              );
                            },
                            child: const Text(
                              'Add 3 Points',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    minimumSize: const Size(150, 50),
                  ),
                  onPressed: (){

                  },
                  child: const Text(
                    'Reset',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        listener: (context, state) {
          
        },
    );
  }
}
