public virtual class Student {
    String name;
    String enrollmentNo;
    
   public Student(String n, String e) {
        name = n;
        enrollmentNo = e;
    }
    
   public void show() {
        System.debug('Name: ' + name);
        System.debug('Enrollment No: ' + enrollmentNo);
    }
}