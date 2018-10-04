public class Book extends Item{

	public Book(String t, String a, String p, int y, int pgs) {
		super(t, y);
		author = a;
		publisher = p;
		pages = pgs;
	}

	public String toString() {
		String ans="";
		ans += "Author: " + author + "\n";
		ans += "Publisher: " + publisher + "\n";
		ans += "Length: " + Integer.toString(pages) + " pages\n";
		ans += super.toString();
		return ans;
	}

	private String author;
	private String publisher;
	private String rating;
	private int pages;

}
