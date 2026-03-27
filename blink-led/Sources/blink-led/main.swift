/// Wendy Lite — Blink LED
///
/// Blinks the built-in LED on the ESP32-C6 DevKit C1 (GPIO 8).

import WendyLite

let ledPin: Int32 = 8

@_cdecl("_start")
func start() {
    GPIO.configure(pin: ledPin, mode: .output)

    while true {
        GPIO.write(pin: ledPin, level: 1)
        System.sleepMs(500)
        GPIO.write(pin: ledPin, level: 0)
        System.sleepMs(500)
    }
}
