/* Task 3: Mixin (Smart Devices App )

Mixin:

Bluetooth

Properties: deviceName, isConnected

Methods: connect(), disconnect()

Classes using Mixin:

SmartPhone

Properties: brand, model, batteryLevel

Methods: showInfo() + inherited connect() & disconnect()

SmartWatch

Properties: brand, strapType, heartRateSensor

Methods: showInfo() + inherited connect() & disconnect()

Mixin: Bluetooth ka feature dono devices me reuse hoga.*/

// Mixin for Bluetooth feature
mixin Bluetooth {
  String deviceName = " ";
  bool isConnected = false;

  // Connect method
  void connect() {
    isConnected = true;
    print("$deviceName is connected");
  }

  // Disconnect method
  void disconnect() {
    isConnected = false;
    print("$deviceName is disconnected");
  }
}

// SmartPhone class using Bluetooth
class SmartPhone with Bluetooth {
  String brand;
  String model;
  int batteryLevel;

  // Constructor sets device name
  SmartPhone(this.brand, this.model, this.batteryLevel) {
    deviceName = "$brand $model";
  }

  // Show phone info
  void showInfo() {
    print("Phone:$brand $model, Battery Level: $batteryLevel%");
  }
}

// SmartWatch class using Bluetooth
class SmartWatch with Bluetooth {
  String brand;
  String strapType;
  bool heartRateSensor;

  // Constructor sets device name
  SmartWatch(this.brand, this.strapType, this.heartRateSensor) {
    deviceName = "$brand $strapType";
  }

  // Show watch info
  void showInfo() {
    print("Watch:$brand, Strap:$strapType, Heart Rate Sensor:$heartRateSensor");
  }
}

void main() {
  // Create SmartPhone object
  SmartPhone smartPhone = SmartPhone("Vivo", "Y90", 100);
  smartPhone.showInfo();
  smartPhone.connect(); // Connect Bluetooth

  // Create SmartWatch object
  SmartWatch smartWatch = SmartWatch("Apple", "Leather", true);
  smartWatch.showInfo();
  smartWatch.disconnect(); // Disconnect Bluetooth
}
