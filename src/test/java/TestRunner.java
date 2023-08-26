import com.intuit.karate.Runner;

public class TestRunner {
    public static void main(String[] args) {
        Runner.path("src/test/java/PETSTORE").parallel(1);
    }
}

