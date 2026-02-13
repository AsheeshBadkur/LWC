public class Learner extends Student {
    String course;
    
   public Learner(String n, String e, String c) {
       super(n, e);
        course = c;
    }
    
    public void showAll() {
        show(); // now works
        System.debug('Course: ' + course);
    }
}