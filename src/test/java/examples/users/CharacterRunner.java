package examples.users;

import com.intuit.karate.junit5.Karate;

class CharacterRunner {
    
    @Karate.Test
    Karate testUsers() {
        return Karate.run("character").relativeTo(getClass());
    }    

}
