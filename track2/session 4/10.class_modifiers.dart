//! ******** Enum ***********
enum Status {
  online, offline
}
enum Gender {male, female}

//? ********** without enum *********
class StatusView {
  Shape(String type) {
    switch (type) {
      case 'online':
        print('status is online');
      case 'offline':
        print('status is offline');
      default:
        throw 'Invalid gender';
    }
  }
}

//? ********** with enum *********
class StatusViewWithEnum {
  Shape(Status type) {
    switch (type) {
      case Status.online:
        print('status is online');
      case Status.offline:
        print('status is offline');
      default:
        throw 'Invalid gender';
    }
  }
}

//? ********* Enum with extension *******
extension StatusEnum on Status {
  String get value {
    return switch(this) {
      Status.online => 'online',
      Status.offline => 'offline'
    };
  }
}


//! *********** Base Class **********
/**
 *? Allow
 ** extends
 ** mixins
 ** implement inside library
 ** create instance
 *? Not Allow
 ** Implement from outside library
 *? More features
 ** All implemented private members exist in subtypes.
 ** You must mark any class which implements or extends a base class as base, final, or sealed. This prevents outside libraries from breaking the base class guarantees.
 */
base class BaseVehicle {
  void moveForward(int meters) {
    // ...
  }
}

//! *********** Final Class **********
/**
 *? Allow
 ** can be extended or implemented within the same library. 
 ** create instance
 *? Not Allow
 ** can not be extended or implemented outside library.
 */
final class GetUsers {}


//! *********** Sealed Class **********
/**
 *? Allow
 ** can be extended or implemented within the same library. 
 *? Not Allow
 ** They cannot be constructed themselves.
 ** They can have factory constructors.
 ** create instance
 ** can not be extended or implemented or mixed outside library.
 */
sealed class SealedVehicle {}
class SealedCar extends SealedVehicle {}

class SealedTruck implements SealedVehicle {}

class SealedBicycle extends SealedVehicle {}