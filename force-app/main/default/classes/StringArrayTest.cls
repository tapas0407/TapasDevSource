public class StringArrayTest {
    
    public static List <String> generateStringArray (Integer n) {
        List<String> sList = new List <String>();
        for (Integer i=0; i<n; i++){
            sList.add('Test'+i);
        }
        return sList;
    }

}