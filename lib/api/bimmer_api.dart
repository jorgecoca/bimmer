import 'package:bimmer/models/models.dart';

class BimmerApi {
  Future<List<Vehicle>> fetchVehicles() {
    return Future.delayed(
      Duration(seconds: 2),
      () => Future.value(_getVehicles()),
    );
  }
}

List<Vehicle> _getVehicles() => [
      Vehicle(
        id: 'e26-m1',
        name: 'E26 M1',
        yearOfConstruction: 1978,
        likes: 299,
        imageUrl:
            'https://hips.hearstapps.com/roa.h-cdn.co/assets/15/41/1024x512/landscape-1444320830-bmw-m1-1979-1024x768-wallpaper-04.jpg',
        history:
            'The M1 is still considered the greatest BMW ever made by many. Designed by Giugiaro, it was originally developed in collaboration with Lamborghini but after the agreement fell apart, BMW decided to do the whole thing itself. The result was a supercar that quickly became a legend.',
      ),
      Vehicle(
        id: 'e24-m6',
        name: 'E24 M6',
        yearOfConstruction: 1976,
        likes: 295,
        imageUrl:
            'https://hips.hearstapps.com/roa.h-cdn.co/assets/15/41/1024x512/landscape-1444321000-bmw-m-635-csi-1986-1024x768-wallpaper-02.jpg',
        history:
            'The E24 6-Series had style, but faster is always better, so BMW took a modified version of the engine it used in the M1 and dropped it into the E24. That made it fast back then, and even today, it\'s still fairly quick. The best part is, a sharknose M6 still turns heads, even 30 years later.',
      ),
      Vehicle(
        id: 'e28-m5',
        name: 'E28 M5',
        yearOfConstruction: 1986,
        likes: 295,
        imageUrl:
            'https://hips.hearstapps.com/roa.h-cdn.co/assets/15/41/1024x512/landscape-1444321091-bmw-m5-1984-1024x768-wallpaper-01.jpg',
        history:
            'As great as the M1 and the M6 were, the fact that they had two doors forced their owners to make compromises in the practicality department. BMW solved that problem by giving the E28 5 Series the full M treatment as well. The resulting car was the fastest production sedan in the world.',
      ),
      Vehicle(
        id: 'e31-850csi',
        name: 'E31 850CSi',
        yearOfConstruction: 1990,
        likes: 294,
        imageUrl:
            'https://hips.hearstapps.com/roa.h-cdn.co/assets/15/41/1024x512/landscape-1444321358-bmw-8-series-1989-1024x768-wallpaper-03.jpg',
        history:
            'The BMW 8-Series picked up where the 6 Series left off and added both more power and more luxury. An excellent V8 was available, but the 8 Series could also be had with a V12 paired with a six speed manual transmission. The most desirable version, though, was the 850 CSi. Its V12 made 375 horsepower, was only available with a manual, and was probably the best luxury grand tourer you could buy in the 1990s.',
      ),
      Vehicle(
        id: 'e52-z8',
        name: 'E52 Z8',
        yearOfConstruction: 200,
        likes: 287,
        imageUrl:
            'https://hips.hearstapps.com/roa.h-cdn.co/assets/15/41/1024x512/landscape-1444321971-bmw-z8-2001-1024x768-wallpaper-03.jpg?resize=768:*',
        history:
            'Just look at the Z8. Take a minute, sit back, and look at it. It\'s gorgeous. It\'s amazing. It\'s also the last truly great car BMW ever made. The BMW Z8 is also one of the few cars in the past 20 years that\'s appreciated significantly. Clean, desirable examples are selling for more than double what they originally cost, and even the cheapest versions aren\'t going for much less than \$200,000.',
      ),
      Vehicle(
        id: 'e52-z8',
        name: 'E52 Z8',
        yearOfConstruction: 200,
        likes: 287,
        imageUrl:
            'https://hips.hearstapps.com/roa.h-cdn.co/assets/15/41/1024x512/landscape-1444321971-bmw-z8-2001-1024x768-wallpaper-03.jpg?resize=768:*',
        history:
            'Just look at the Z8. Take a minute, sit back, and look at it. It\'s gorgeous. It\'s amazing. It\'s also the last truly great car BMW ever made. The BMW Z8 is also one of the few cars in the past 20 years that\'s appreciated significantly. Clean, desirable examples are selling for more than double what they originally cost, and even the cheapest versions aren\'t going for much less than \$200,000.',
      ),
    ];
