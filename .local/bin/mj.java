///usr/bin/env jbang "$0" "$@" ; exit $?

import java.awt.MouseInfo;
import java.awt.Robot;

public class mj {
    public static final int SLEEP_MILLIS = 60 * 1000;

    public static void main(String... args) throws Exception {
        var robot = new Robot();

        while (true) {
            var point = MouseInfo.getPointerInfo().getLocation();
            robot.mouseMove(point.x, point.y);

            System.out.println("Mouse moved.");

            Thread.sleep(SLEEP_MILLIS);
        }
    }
}
