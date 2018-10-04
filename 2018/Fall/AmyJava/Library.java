import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

public class Library {
    List<Object> library = new ArrayList<Object>();

    public void addBook(String t, String a, String p, int y, int pages) {
        Book newBook = new Book(t, a, p, y, pages);
        library.add(newBook);
    }

    public void addMovie(String t, String d, String s, int y, int m, String r) {
        Movie newMovie = new Movie(t, d, s, y, m, r);
        library.add(newMovie);
    }

    public String toString() {
        String output = "Catalog:\n";
        for (int i = 0; i < library.size(); i++) {
            output += library[i].toString() + '\n';
        }
        return output;
    }

    public void alphabetize() {
        Comparator<Object> objectComparator = new Comparator<Object>() {
            public int compare(Object o1, Object o2) {
                return o1.toString().compareTo(o2.toString());
            }
        };
        Collections.sort(library, objectComparator);
    }

	public static void main(String[] args) {
		addBook("Moby Dick", "Herman Melville", "Pearson Longman", 2007, 650);
		addBook("Dubliners", "James Joyce", "Penguin, Inc.", 2010, 160);
		addMovie("Repo Man", "Alex Cox", "Edge City", 1984, 92, "R");
		addMovie("Star Wars", "George Lucas", "Lucasfilm", 1977, 160, "PG");

        String output = toString();
        System.out.println(output);
	}
}
