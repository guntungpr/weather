import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/application/home/home_bloc.dart';
import 'package:weather/presentation/home/profile/profile_page.dart';
import 'package:weather/presentation/home/weather/weather_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        final _bloc = context.read<HomeBloc>();
        return Scaffold(
          body: state.activeIndex == 0 ? WeatherPage() : ProfilePage(),
          bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Beranda',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
            ],
            currentIndex: state.activeIndex,
            showUnselectedLabels: true,
            onTap: (index) => _bloc.add(HomeEvent.indexChanged(index)),
          ),
        );
      },
    );
  }
}
