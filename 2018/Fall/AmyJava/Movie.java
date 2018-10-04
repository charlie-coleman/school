public class Movie {

	public Movie(String t, String d, String s, int y, int m, String r) {
		super(t, y);
		director = d;
		studio = s;
		minutes = m;
		rating = r;
	}

	public String toString() {
		String ans="";
		ans += "Director: " + director + "\n";
		ans += "Studio: " + studio + "\n";
		ans += "Length: " + Integer.toString(minutes) + " minutes\n";
		ans += "Rating: " + rating + "\n";
		ans += super.toString();

		return ans;
	}


	private String director;
	private String studio;
	private String rating;
	private int minutes;

}
