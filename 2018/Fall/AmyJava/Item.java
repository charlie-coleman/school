public class Item {

	public Item(String t, int y) {
		title = t;
		year = y;
	}

	public String toString() {
		String ans="";
		ans += "Title: " + title + "\n";
		ans += "Year: " + Integer.toString(year) + "\n";
		return ans;
	}

	private String title;
	private int year;

}
