/*🔹 Task 3: Library System (Multilevel + Hierarchical)

LibraryItem class → property: title.

Book class → inherit kare aur property author.

Magazine class → inherit kare aur property issueNumber.

EBook class → inherit kare aur property fileSize.

main() me teenon objects banao aur unki info print karo.*/

/*LibraryItem → Book → Magazine (multilevel)

Book → Magazine aur Book → Ebook (hierarchical)*/

class LibraryItem {
  String title;
  LibraryItem(this.title);
  void showLibraryItem() {
    print("Title:$title");
  }
}

class Book extends LibraryItem {
  String author;
  Book(String title, this.author) : super(title);
  void showBook() {
    print("Author:$author");
  }
}

class Magazine extends Book {
  int issueNumber;
  Magazine(String title, String author, this.issueNumber)
    : super(title, author);
  void showMagazine() {
    print("Issue No:$issueNumber");
  }
}

class Ebook extends Book {
  int fileSize;
  Ebook(String title, String author, this.fileSize) : super(title, author);
  void showEbook() {
    print("File size:$fileSize MB");
  }
}

void main() {
  Book book = Book("Jannat kai patty", "Nimra ahmad");
  book.showLibraryItem();
  book.showBook();

  Magazine magazine = Magazine("Mushaf", "Nimra Ahmad", 1);
  magazine.showLibraryItem();
  magazine.showBook();
  magazine.showMagazine();

  Ebook ebook = Ebook("Azazeel", "Rabia", 5);
  ebook.showLibraryItem();
  ebook.showBook();
  ebook.showEbook();
}
