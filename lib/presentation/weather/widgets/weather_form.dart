import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/application/weather/weather_bloc.dart';

class WeatherForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<WeatherBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather'),
      ),
      body: BlocConsumer<WeatherBloc, WeatherState>(
        listener: (context, state) {},
        builder: (context, state) {
          return ListView(
            padding: const EdgeInsets.all(8),
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.house),
                  labelText: 'Input City',
                ),
                autocorrect: false,
                onChanged: (value) => bloc.add(WeatherEvent.inputCity(value)),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () => bloc.add(const WeatherEvent.searchWeather()),
                child: const Text("Submit"),
              ),
              const SizedBox(height: 10),
              Text("Weather ${state.weather}"),
              const SizedBox(height: 10),
              Text("lat ${state.lat}"),
              const SizedBox(height: 10),
              Text("long ${state.long}"),
              const SizedBox(height: 10),
              Text("City ${state.city}"),
              const SizedBox(height: 10),
              Text("Temp ${state.temp}"),
            ],
          );
        },
      ),
    );
  }
}
