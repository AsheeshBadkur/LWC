public class LoopExampleDemo {

    public static void runAll() {

        // Q1 Simple For Loop
        System.debug('Q1 -> Name: ASHEESH BADKUR');
        System.debug('Enrollment: LNCDBTC11055');
        for(Integer i = 1; i <= 5; i++) {
            System.debug('Number: ' + i);
        }

        // Q2 While Loop
        System.debug('Q2 -> Name: ASHEESH BADKUR');
        System.debug('Enrollment: LNCDBTC11055');
        Integer x = 1;
        while(x <= 3) {
            System.debug('Count: ' + x);
            x++;
        }

        // Q3 Do-While Loop
        System.debug('Q3 -> Name: ASHEESH BADKUR');
        System.debug('Enrollment: LNCDBTC11055');
        Integer y = 1;
        do {
            System.debug('Value: ' + y);
            y++;
        } while(y <= 3);

        // Q4 For Each Loop
        System.debug('Q4 -> Name: ASHEESH BADKUR');
        System.debug('Enrollment: LNCDBTC11055');
        List<String> fruits = new List<String>{'Apple','Mango','Banana'};
        for(String f : fruits) {
            System.debug('Fruit: ' + f);
        }

        // Q5 Nested For Loop
        System.debug('Q5 -> Name: ASHEESH BADKUR');
        System.debug('Enrollment: LNCDBTC11055');
        for(Integer i = 1; i <= 2; i++) {
            for(Integer j = 1; j <= 2; j++) {
                System.debug('i=' + i + ' j=' + j);
            }
        }

        // Q6 Using Break Statement
        System.debug('Q6 -> Name: ASHEESH BADKUR');
        System.debug('Enrollment: LNCDBTC11055');
        for(Integer i = 1; i <= 5; i++) {
            if(i == 3) {
                System.debug('Breaking loop at i=' + i);
                break;
            }
            System.debug('i=' + i);
        }

        // Q7 Using Continue Statement
        System.debug('Q7 -> Name: ASHEESH BADKUR');
        System.debug('Enrollment: LNCDBTC11055');
        for(Integer i = 1; i <= 5; i++) {
            if(i == 2) {
                continue;
            }
            System.debug('Value of i: ' + i);
        }

        // Q8 Loop with List of Numbers
        System.debug('Q8 -> Name: ASHEESH BADKUR');
        System.debug('Enrollment: LNCDBTC11055');
        List<Integer> nums = new List<Integer>{2,4,6,8,10};
        for(Integer n : nums) {
            System.debug('Even number: ' + n);
        }

        // Q9 Reverse Counting
        System.debug('Q9 -> Name: ASHEESH BADKUR');
        System.debug('Enrollment: LNCDBTC11055');
        for(Integer i = 5; i >= 1; i--) {
            System.debug('Reverse: ' + i);
        }

        // Q10 Infinite Loop with Break
        System.debug('Q10 -> Name: ASHEESH BADKUR');
        System.debug('Enrollment: LNCDBTC11055');
        Integer a = 1;
        while(true) {
            System.debug('a = ' + a);
            if(a == 3) {
                System.debug('Loop stopped manually at 3');
                break;
            }
            a++;
        }
    }
}