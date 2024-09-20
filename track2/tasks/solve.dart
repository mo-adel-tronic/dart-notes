abstract class Item {
  String _title;
  bool _isAvailable;

  // Constructor
  Item(this._title, this._isAvailable);

  // Getters
  String get title => _title;
  bool get isAvailable => _isAvailable;

  // Setters
  set isAvailable(bool available) {
    _isAvailable = available;
  }

  // Abstract method to get item details
  String getDetails();
}


class Book extends Item {
  String _author;

  // Constructor
  Book(String title, String author, bool isAvailable) : _author = author, super(title, isAvailable);

  // Getter for author
  String get author => _author;

  // Override the abstract method
  @override
  String getDetails() {
    return 'Title: $title, Author: $author, Available: $isAvailable';
  }
}



class Library {
  List<Book> _books = [];

  // Method to add a book to the library
  void addBook(Book book) {
    _books.add(book);
    print('Book added: ${book.title}');
  }

  // Method to check out a book
  void checkOutBook(String title) {
    for (var book in _books) {
      if (book.title == title && book.isAvailable) {
        book.isAvailable = false;
        print('You have checked out: $title');
        return;
      }
    }
    print('Book not available: $title');
  }

  // Method to return a book
  void returnBook(String title) {
    for (var book in _books) {
      if (book.title == title && !book.isAvailable) {
        book.isAvailable = true;
        print('You have returned: $title');
        return;
      }
    }
    print('Book not found: $title');
  }

  // Method to display all books
  void displayBooks() {
    for (var book in _books) {
      print('Title: ${book.title}, Author: ${book.author}, Available: ${book.isAvailable}');
    }
  }
}


void main() {
  // Create some book objects
  Book book1 = Book('1984', 'George Orwell', true);
  Book book2 = Book('To Kill a Mockingbird', 'Harper Lee', true);
  Book book3 = Book('The Great Gatsby', 'F. Scott Fitzgerald', true);

  // Create a library object
  Library library = Library();

  // Add books to the library
  library.addBook(book1);
  library.addBook(book2);
  library.addBook(book3);

  // Display all books in the library
  library.displayBooks();

  // Check out a book
  library.checkOutBook('1984');

  // Display all books again to see the updated availability
  library.displayBooks();

  // Return a book
  library.returnBook('1984');

  // Display all books again to see the updated availability
  library.displayBooks();
}

