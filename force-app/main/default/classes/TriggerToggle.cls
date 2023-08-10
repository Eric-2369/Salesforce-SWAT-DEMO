public class TriggerToggle {
    static Boolean toggle = true;

    public static void turnOn() {
        toggle = true;
    }

    public static void turnOff() {
        toggle = false;
    }

    public static Boolean shouldTriggerExecuted() {
        return toggle;
    }
}
