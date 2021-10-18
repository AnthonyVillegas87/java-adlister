public class BeanTest {
    public static void main(String[] args) {
        Album albums = new Album(
                1,
                "Led Zeppelin",
                "Latter Years",
                1987 ,
                25,
                "classic rock"
        );
        System.out.println(albums);

        Authors author = new Authors(
                1,
                "Stephen",
                "King"
        );
        System.out.println(author);
    }



}
