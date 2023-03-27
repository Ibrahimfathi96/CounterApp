import 'package:basketball_counter_app/Cubit/counter_cubit.dart';
import 'package:basketball_counter_app/Cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  int teamAPoints = 0;
  int teamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange,
            title: Text('Points Counter'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 500,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Team A',
                          style: TextStyle(
                            fontSize: 32,
                          ),
                        ),
                        Text(
                          '${BlocProvider.of<CounterCubit>(context).teamAPoints}',
                          style: TextStyle(
                            fontSize: 150,
                          ),
                        ),
                        Row(
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.all(8),
                                primary: Colors.orange,
                                minimumSize: Size(50, 50),
                              ),
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .teamPointsIncrement(
                                        team: 'A', buttonNumber: 1);
                              },
                              child: Text(
                                ' + 1 ',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            const SizedBox(width: 10,),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.all(8),
                                primary: Colors.orange,
                                minimumSize: Size(50, 50),
                              ),
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .teamPointsDecrement(
                                        team: 'A', buttonNumber: 1);
                              },
                              child: Text(
                                ' - 1 ',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.all(8),
                                primary: Colors.orange,
                                minimumSize: Size(50, 50),
                              ),
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .teamPointsIncrement(
                                        team: 'A', buttonNumber: 2);
                              },
                              child: Text(
                                ' + 2 ',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            const SizedBox(width: 10,),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.all(8),
                                primary: Colors.orange,
                                minimumSize: Size(50, 50),
                              ),
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .teamPointsDecrement(
                                        team: 'A', buttonNumber: 2);
                              },
                              child: Text(
                                ' - 2 ',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.all(8),
                                primary: Colors.orange,
                                minimumSize: Size(50, 50),
                              ),
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .teamPointsIncrement(
                                        team: 'A', buttonNumber: 3);
                              },
                              child: Text(
                                ' + 3 ',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            const SizedBox(width: 10,),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.all(8),
                                primary: Colors.orange,
                                minimumSize: Size(50, 50),
                              ),
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .teamPointsDecrement(
                                        team: 'A', buttonNumber: 3);
                              },
                              child: Text(
                                ' - 3 ',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 500,
                    child: VerticalDivider(
                      indent: 50,
                      endIndent: 50,
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                  Container(
                    height: 500,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Team B',
                          style: TextStyle(
                            fontSize: 32,
                          ),
                        ),
                        Text(
                          '${BlocProvider.of<CounterCubit>(context).teamBPoints}',
                          style: TextStyle(
                            fontSize: 150,
                          ),
                        ),
                        Row(
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.all(8),
                                primary: Colors.orange,
                                minimumSize: Size(50, 50),
                              ),
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .teamPointsIncrement(
                                    team: 'B', buttonNumber: 1);
                              },
                              child: Text(
                                ' + 1 ',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            const SizedBox(width: 10,),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.all(8),
                                primary: Colors.orange,
                                minimumSize: Size(50, 50),
                              ),
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .teamPointsDecrement(
                                    team: 'B', buttonNumber: 1);
                              },
                              child: Text(
                                ' - 1 ',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.all(8),
                                primary: Colors.orange,
                                minimumSize: Size(50, 50),
                              ),
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .teamPointsIncrement(
                                    team: 'B', buttonNumber: 2);
                              },
                              child: Text(
                                ' + 2 ',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            const SizedBox(width: 10,),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.all(8),
                                primary: Colors.orange,
                                minimumSize: Size(50, 50),
                              ),
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .teamPointsDecrement(
                                    team: 'B', buttonNumber: 2);
                              },
                              child: Text(
                                ' - 2 ',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.all(8),
                                primary: Colors.orange,
                                minimumSize: Size(50, 50),
                              ),
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .teamPointsIncrement(
                                    team: 'B', buttonNumber: 3);
                              },
                              child: Text(
                                ' + 3 ',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            const SizedBox(width: 10,),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.all(8),
                                primary: Colors.orange,
                                minimumSize: Size(50, 50),
                              ),
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .teamPointsDecrement(
                                    team: 'B', buttonNumber: 3);
                              },
                              child: Text(
                                ' - 3 ',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 500,
                    child: VerticalDivider(
                      indent: 50,
                      endIndent: 50,
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                  Container(
                    height: 500,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Team C',
                          style: TextStyle(
                            fontSize: 32,
                          ),
                        ),
                        Text(
                          '${BlocProvider.of<CounterCubit>(context).teamCPoints}',
                          style: TextStyle(
                            fontSize: 150,
                          ),
                        ),
                        Row(
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.all(8),
                                primary: Colors.orange,
                                minimumSize: Size(50, 50),
                              ),
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .teamPointsIncrement(
                                    team: 'C', buttonNumber: 1);
                              },
                              child: Text(
                                ' + 1 ',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            const SizedBox(width: 10,),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.all(8),
                                primary: Colors.orange,
                                minimumSize: Size(50, 50),
                              ),
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .teamPointsDecrement(
                                    team: 'C', buttonNumber: 1);
                              },
                              child: Text(
                                ' - 1 ',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.all(8),
                                primary: Colors.orange,
                                minimumSize: Size(50, 50),
                              ),
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .teamPointsIncrement(
                                    team: 'C', buttonNumber: 2);
                              },
                              child: Text(
                                ' + 2 ',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            const SizedBox(width: 10,),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.all(8),
                                primary: Colors.orange,
                                minimumSize: Size(50, 50),
                              ),
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .teamPointsDecrement(
                                    team: 'C', buttonNumber: 2);
                              },
                              child: Text(
                                ' - 2 ',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.all(8),
                                primary: Colors.orange,
                                minimumSize: Size(50, 50),
                              ),
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .teamPointsIncrement(
                                    team: 'C', buttonNumber: 3);
                              },
                              child: Text(
                                ' + 3 ',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            const SizedBox(width: 10,),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.all(8),
                                primary: Colors.orange,
                                minimumSize: Size(50, 50),
                              ),
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .teamPointsDecrement(
                                    team: 'C', buttonNumber: 3);
                              },
                              child: Text(
                                ' - 3 ',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(8),
                  primary: Colors.orange,
                  minimumSize: Size(150, 50),
                ),
                onPressed: () {
                  BlocProvider.of<CounterCubit>(context).resetScore();
                },
                child: Text(
                  'Reset',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
