import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:weather/application/weather/weather_bloc.dart';
import 'package:weather/infrastructure/weather/weather_model.dart';

class WeatherForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<WeatherBloc>(context);
    WeatherModel? model;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Weather"),
        automaticallyImplyLeading: false,
      ),
      body: BlocConsumer<WeatherBloc, WeatherState>(
        listener: (context, state) {
          model = state.optionFailureOrSuccess.fold(
            () => null,
            (a) => a.fold((l) => null, (r) => r),
          );
        },
        builder: (context, state) {
          return Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blueAccent, Colors.lightBlueAccent],
              ),
            ),
            child: state.isLoading
                ? const Center(child: CircularProgressIndicator())
                : ListView(
                    padding: const EdgeInsets.all(8),
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                          left: 20,
                          top: 20,
                          right: 20,
                          bottom: 50,
                        ),
                        padding: const EdgeInsets.only(
                          left: 20,
                          top: 5,
                          right: 10,
                        ),
                        height: 50,
                        width: 200,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(3),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              spreadRadius: 3,
                              blurRadius: 5,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: TextField(
                                decoration: const InputDecoration.collapsed(
                                  hintText: "Enter City",
                                ),
                                onSubmitted: (value) {
                                  bloc.add(WeatherEvent.inputCity(value));
                                  bloc.add(const WeatherEvent.searchWeather());
                                },
                              ),
                            ),
                            IconButton(
                              icon: const Icon(Icons.search),
                              onPressed: () {
                                bloc.add(const WeatherEvent.searchWeather());
                              },
                            ),
                          ],
                        ),
                      ),
                      if (model == null)
                        const Center(
                          child: Text(
                            "No Data Found",
                            style: TextStyle(fontSize: 20),
                          ),
                        )
                      else
                        Column(
                          children: [
                            Column(
                              children: [
                                Text(
                                  model!.name,
                                  style: const TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                Text(
                                  model!.sys.country,
                                  style: const TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Icon(
                                      Icons.location_on,
                                      size: 15,
                                    ),
                                    const SizedBox(width: 10),
                                    Text(
                                      model!.coord.lat.toString(),
                                      style: const TextStyle(fontSize: 16),
                                    ),
                                    const Text(
                                      ' , ',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    Text(
                                      model!.coord.lon.toString(),
                                      style: const TextStyle(fontSize: 16),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            const SizedBox(height: 50),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "${double.parse((model!.main.temp - 273.15).toStringAsFixed(1)).toString()}°C",
                                  style: const TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Image.network(
                                    'http://openweathermap.org/img/w/${model!.weather[0].icon}.png',
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(height: 50),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  model!.weather[0].main,
                                  style: const TextStyle(fontSize: 36),
                                ),
                                Text(
                                  model!.weather[0].description,
                                  style: const TextStyle(fontSize: 26),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(Icons.access_time),
                                const SizedBox(width: 5),
                                const Text("Last updated on "),
                                Text(
                                  DateFormat('yyyy-MM-dd – HH:mm:ss')
                                      .format(DateTime.now()),
                                ),
                              ],
                            ),
                          ],
                        ),
                    ],
                  ),
          );
        },
      ),
    );
  }
}
