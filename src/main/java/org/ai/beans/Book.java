package org.ai.beans;

public class Book {
private int bookId;
private String bookName;
private String publisher;
private String price;

public Book() {
	
}
public Book(int bookId, String bookName, String publisher, String price) {
	this.bookId = bookId;
	this.bookName = bookName;
	this.publisher = publisher;
	this.price = price;
}

public int getBookId() {
	return bookId;
}
public void setBookId(int bookId) {
	this.bookId = bookId;
}
public String getBookName() {
	return bookName;
}
public void setBookName(String bookName) {
	this.bookName = bookName;
}
public String getPublisher() {
	return publisher;
}
public void setPublisher(String publisher) {
	this.publisher = publisher;
}
public String getPrice() {
	return price;
}
public void setPrice(String price) {
	this.price = price;
}

}
