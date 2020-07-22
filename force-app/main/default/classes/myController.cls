public class myController {
    public String myString;
    public String getMyString() {
        System.debug('myString1'+myString);
        return 'getmyString';
    }
    public String getStringMethod1() {
        System.debug('myString2'+myString);
        return myString;
    }
    public String getStringMethod2() {
        System.debug('myString3'+myString);
        if (myString == null)
            myString = 'Method2';
        System.debug('myString4'+myString);
        return myString;
    }
}