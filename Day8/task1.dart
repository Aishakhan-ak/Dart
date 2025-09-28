/*Task 1: Polymorphism + Override (Food Delivery App)

Classes & Features:

Payment (Parent Class)
- Property: amount
- Method: pay()

CashPayment (Child)
- Properties: amount, receiverName
- Method: pay() → override karega cash logic se

CardPayment (Child)
- Properties: amount, cardNumber, bankName
- Method: pay() → override karega card logic se

JazzCashPayment (Child)
- Properties: amount, mobileNumber
- Method: pay() → override karega JazzCash logic se

Order Class
- Properties: orderId, items, payment
- Method: processOrder() → order details print kare aur payment check kare

Polymorphism: jab pay() call hoga to object ke type k mutabiq alag behavior milega.*/

// Parent class
class Payment {
  double amount;

  Payment(this.amount);

  // base method
  bool pay() {
    // validation
    if (amount <= 0) {
      print("Invalid amount:$amount");
      return false;
    } else {
      print("Amount:Rs.$amount");
      return true;
    }
  }
}

//Cash payment class
class CashPayment extends Payment {
  String receiverName;

  CashPayment(double amount, this.receiverName) : super(amount);

  @override
  bool pay() {
    // validation
    if (amount <= 0) {
      print("Cash payment failed!Invalid amount:$amount");
      return false;
    }
    if (receiverName.isEmpty) {
      print("Cash payment failed.Receiver name is missing");
      return false;
    }
    print("Payment through Cash:Rs.$amount,Receiver Name:$receiverName");
    return true;
  }
}

// Card payment class
class CardPayment extends Payment {
  String cardNumber;
  String bankName;

  CardPayment(double amount, this.cardNumber, this.bankName) : super(amount);

  @override
  bool pay() {
    // validation
    if (amount <= 0) {
      print("Card payment failed!Invalid amount:$amount");
      return false;
    }
    if (cardNumber.length < 12) {
      print("Card payment failed!Invalid Card number:$cardNumber;");
      return false;
    }
    if (bankName.isEmpty) {
      print("Card payment failed!Bank name is missing");
      return false;
    }
    print(
      "Payment through Card:Rs.$amount,Card Number:$cardNumber,Bank Name:$bankName",
    );
    return true;
  }
}

// JazzCash payment class
class JazzCashPayment extends Payment {
  String mobileNumber;

  JazzCashPayment(double amount, this.mobileNumber) : super(amount);

  @override
  bool pay() {
    // validation
    if (amount <= 0) {
      print("JazzCash payment failed!Invalid amount:$amount");
      return false;
    }
    if (mobileNumber.length != 11 || !mobileNumber.startsWith("03")) {
      print("JazzCash payment failed!Invalid mobile number:$mobileNumber");
      return false;
    }
    print("Payment through JazzCash:$amount,Mobile Number:$mobileNumber");
    return true;
  }
}

// order class
class Order {
  String orderId;
  List<String> items;
  Payment payment;

  Order(this.orderId, this.items, this.payment);

  void processOrder() {
    print("Order ID:$orderId");
    print("Items:${items.join(", ")}");
    bool success = payment.pay();

    if (success) {
      print("Order Completed!\n");
    } else {
      print("Order Failed due to payment error!\n");
    }
  }
}

void main() {
  // order 1: Cash
  Order order1 = Order("ORD101", [
    "Burger",
    "Pizaa",
  ], CashPayment(3000, "Ahan"));

  // order 2:Card
  Order order2 = Order("ORD102", [
    "Next Cola",
    "Pizaa",
  ], CardPayment(2000, "12101-3245", "HBL"));

  // order 3:JazzCash
  Order order3 = Order("ORD103", [
    "Fries",
    "Burger",
  ], JazzCashPayment(3000, "03455679916"));

  // Process the order
  List<Order> orders = [order1, order2, order3];
  for (var order in orders) {
    order.processOrder(); // polymorphism in action
  }
}
