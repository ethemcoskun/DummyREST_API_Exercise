package tests;

import com.intuit.karate.junit5.Karate;

public class TestsRunner {

	@Karate.Test
	Karate startTests() {
		return Karate.run("testEmployee").relativeTo(getClass());
	}
}
