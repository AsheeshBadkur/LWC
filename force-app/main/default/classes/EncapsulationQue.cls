public class EncapsulationQue {

    // class for student
    public class Student {
        private String name;
        private String enrollment;

        public void setName(String n){
            name = n;
        }
        public String getName(){
            return name;
        }
        public void setEnroll(String e){
            enrollment = e;
        }
        public String getEnroll(){
            return enrollment;
        }
    }

    // class for bank
    public class Bank {
        private String accNo;
        private Decimal balance;

        public void setBank(String a, Decimal b){
            accNo = a;
            balance = b;
        }
        public String getBank(){
            return accNo + ' ' + balance;
        }
    }

    // class for employee
    public class Employee {
        private String empName;
        private Integer empId;

        public void setEmp(String n, Integer id){
            empName = n;
            empId = id;
        }
        public String getEmp(){
            return empName + ' ' + empId;
        }
    }

    // class for product
    public class Product {
        private String pname;
        private Decimal price;

        public void setProd(String n, Decimal p){
            pname = n;
            price = p;
        }
        public String getProd(){
            return pname + ' ' + price;
        }
    }

    // class for book
    public class Book {
        private String title;
        private String author;

        public void setBook(String t, String a){
            title = t;
            author = a;
        }
        public String getBook(){
            return title + ' ' + author;
        }
    }

    // class for order
    public class Order {
        private String orderId;
        private String product;

        public void setOrder(String id, String p){
            orderId = id;
            product = p;
        }
        public String getOrder(){
            return orderId + ' ' + product;
        }
    }

    // class for car
    public class Car {
        private String brand;
        private String model;

        public void setCar(String b, String m){
            brand = b;
            model = m;
        }
        public String getCar(){
            return brand + ' ' + model;
        }
    }

    // class for movie
    public class Movie {
        private String name;
        private String director;

        public void setMovie(String n, String d){
            name = n;
            director = d;
        }
        public String getMovie(){
            return name + ' ' + director;
        }
    }

    // class for teacher
    public class Teacher {
        private String tname;
        private String subject;

        public void setTeacher(String n, String s){
            tname = n;
            subject = s;
        }
        public String getTeacher(){
            return tname + ' ' + subject;
        }
    }

    // class for flight
    public class Flight {
        private String fno;
        private String dest;

        public void setFlight(String f, String d){
            fno = f;
            dest = d;
        }
        public String getFlight(){
            return fno + ' ' + dest;
        }
    }

    // main runner
    public static void runAll(){

        // common student info
        Student stu = new Student();
        stu.setName('ASHEESH BADKUR');
        stu.setEnroll('LNCDBTC11055');

        // Q1
        System.debug('Q1 -> ' + stu.getName() + ' ' + stu.getEnroll());
        System.debug('Q1 -> Student class example');

        // Q2
        Bank b = new Bank();
        b.setBank('ACC123', 5000);
        System.debug('Q2 -> ' + stu.getName() + ' ' + stu.getEnroll());
        System.debug('Q2 -> ' + b.getBank());

        // Q3
        Employee e = new Employee();
        e.setEmp('Raj', 101);
        System.debug('Q3 -> ' + stu.getName() + ' ' + stu.getEnroll());
        System.debug('Q3 -> ' + e.getEmp());

        // Q4
        Product p = new Product();
        p.setProd('Laptop', 65000);
        System.debug('Q4 -> ' + stu.getName() + ' ' + stu.getEnroll());
        System.debug('Q4 -> ' + p.getProd());

        // Q5
        Book bk = new Book();
        bk.setBook('Java Programming','James Gosling');
        System.debug('Q5 -> ' + stu.getName() + ' ' + stu.getEnroll());
        System.debug('Q5 -> ' + bk.getBook());

        // Q6
        Order o = new Order();
        o.setOrder('O123','Mobile Phone');
        System.debug('Q6 -> ' + stu.getName() + ' ' + stu.getEnroll());
        System.debug('Q6 -> ' + o.getOrder());

        // Q7
        Car c = new Car();
        c.setCar('Tesla','Model 3');
        System.debug('Q7 -> ' + stu.getName() + ' ' + stu.getEnroll());
        System.debug('Q7 -> ' + c.getCar());

        // Q8
        Movie m = new Movie();
        m.setMovie('Inception','Christopher Nolan');
        System.debug('Q8 -> ' + stu.getName() + ' ' + stu.getEnroll());
        System.debug('Q8 -> ' + m.getMovie());

        // Q9
        Teacher t = new Teacher();
        t.setTeacher('Mr. Sharma','Mathematics');
        System.debug('Q9 -> ' + stu.getName() + ' ' + stu.getEnroll());
        System.debug('Q9 -> ' + t.getTeacher());

        // Q10
        Flight f = new Flight();
        f.setFlight('AI202','New York');
        System.debug('Q10 -> ' + stu.getName() + ' ' + stu.getEnroll());
        System.debug('Q10 -> ' + f.getFlight());
    }
}