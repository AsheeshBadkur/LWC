global class Child extends Parent {
    public Integer y = 100;

    public override void display() {
        Integer z = x + y; // x inherited from Parent
        System.debug('This is child class');
        System.debug('Sum of x and y = ' + z);
        System.debug('String from parent = ' + s);
    }
}