import '10.class_modifiers.dart';

// Base
base class Car extends BaseVehicle {
  
}

// Sealed
// class Car2 extends SealedVehicle {

// }


String getVehicleSound(SealedVehicle vehicle) {
  return switch (vehicle) {
    SealedCar() => 'vroom',
    SealedTruck() => 'VROOOOMM',
    SealedBicycle() => 'vrom'
  };
}

