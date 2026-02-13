public class StringHandlingQue {
  
    public static void runAll(){

        // Q1 Concatenate two strings
        System.debug('Q1 -> Name: ASHEESH BADKUR Enrollment: LNCDBTC11055');
        String str1 = 'Hello';
        String str2 = 'World';
        String result1 = str1 + ' ' + str2;
        System.debug('Concatenation: ' + result1);

        // Q2 Find length of string
        System.debug('Q2 -> Name: ASHEESH BADKUR Enrollment: LNCDBTC11055');
        String s = 'Salesforce Apex';
        Integer len = s.length();
        System.debug('Length of string: ' + len);

        // Q3 Convert to uppercase
        System.debug('Q3 -> Name: ASHEESH BADKUR Enrollment: LNCDBTC11055');
        String msg = 'welcome to apex';
        String upperMsg = msg.toUpperCase();
        System.debug('Uppercase: ' + upperMsg);

        // Q4 Convert to lowercase
        System.debug('Q4 -> Name: ASHEESH BADKUR Enrollment: LNCDBTC11055');
        String msg2 = 'HELLO STUDENT';
        String lowerMsg = msg2.toLowerCase();
        System.debug('Lowercase: ' + lowerMsg);

        // Q5 Substring
        System.debug('Q5 -> Name: ASHEESH BADKUR Enrollment: LNCDBTC11055');
        String word = 'Encapsulation';
        String sub = word.substring(0,5);
        System.debug('Substring from 0 to 5: ' + sub);

        // Q6 Contains check
        System.debug('Q6 -> Name: ASHEESH BADKUR Enrollment: LNCDBTC11055');
        String sentence = 'I love learning Apex programming';
        Boolean check = sentence.contains('Apex');
        System.debug('Contains Apex? ' + check);

        // Q7 Replace word
        System.debug('Q7 -> Name: ASHEESH BADKUR Enrollment: LNCDBTC11055');
        String text = 'I like Java';
        String replaced = text.replace('Java','Apex');
        System.debug('After replace: ' + replaced);

        // Q8 Trim spaces
        System.debug('Q8 -> Name: ASHEESH BADKUR Enrollment: LNCDBTC11055');
        String spaced = '   Apex Rocks   ';
        String trimmed = spaced.trim();
        System.debug('After trim: ' + trimmed);

        // Q9 Split string
        System.debug('Q9 -> Name: ASHEESH BADKUR Enrollment: LNCDBTC11055');
        String lang = 'Java,Python,Apex';
        List<String> parts = lang.split(',');
        System.debug('After split: ' + parts);

        // Q10 Compare strings
        System.debug('Q10 -> Name: ASHEESH BADKUR Enrollment: LNCDBTC11055');
        String a = 'apex';
        String b = 'APEX';
        Boolean equalIgnore = a.equalsIgnoreCase(b);
        System.debug('Equals Ignore Case: ' + equalIgnore);
    }
}