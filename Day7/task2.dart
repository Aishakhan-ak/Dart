/*🔹 Task 2: E-Commerce System

Product class → properties: id, name, price.

Electronics class → inherit kare aur property warranty.

Clothes class → inherit kare aur property size.

main() me alag-alag products banao aur unki info print kar*/

class Product {
  int productId;
  String productName;
  double productPrice;

  Product(this.productId, this.productName, this.productPrice);

  void productInfo() {
    print(
      "Product ID:$productId, Product Name:$productName,Product price:Rs. $productPrice",
    );
  }
}

class Electronics extends Product {
  int warranty;

  Electronics(
    int productId,
    String productName,
    double productPrice,
    this.warranty,
  ) : super(productId, productName, productPrice);

  void showElectronicsInfo() {
    print("Product Warranty :$warranty Years");
  }
}

class Clothes extends Product {
  int clothSize;

  Clothes(
    int productId,
    String productName,
    double productPrice,
    this.clothSize,
  ) : super(productId, productName, productPrice);

  void clothInfo() {
    print("Cloth size:$clothSize");
  }
}

void main() {
  Electronics electro = Electronics(123, "Beater", 5000, 5);
  Clothes cloth = Clothes(453, "Frock", 100000, 42);

  electro.productInfo();
  electro.showElectronicsInfo();

  cloth.productInfo();
  cloth.clothInfo();
}
