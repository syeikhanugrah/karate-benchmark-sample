package examples.api;

import com.intuit.karate.junit5.Karate;

class ApiTestRunner {

    @Karate.Test
    Karate testAll() {
        return Karate.run("get-all-post", "get-post-by-id", "create-post", "update-post", "delete-post").relativeTo(getClass());
    }
}
