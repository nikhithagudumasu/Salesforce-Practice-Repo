public class RectangleWithConstructor {
    integer len, bre ,area,perimeter;
    public RectangleWithConstructor(integer l, integer b) {
        len = l;
        bre = b;
    }
    public void Area(){
        area = len * bre;
        system.debug('area ='+area);
    }
    public void perimeter(){
        perimeter = 2* (len + bre);
        system.debug('perimeter ='+perimeter);
    }
}