# Battery Check 🔋

A simple Linux bash script that monitors your laptop battery and plays an audio alert when the power cable is unplugged.

## What it does

- Continuously monitors your battery status
- Plays a sound alert when the battery starts discharging (power unplugged)
- Helps prevent unexpected battery drain

## Requirements

- Linux system with `/sys/class/power_supply/BAT1/` (most modern laptops)
- `paplay` command (usually comes with PulseAudio)

## Usage

1. Make the script executable:
   ```bash
   chmod +x battery_check.sh
   ```

2. Run the script:
   ```bash
   ./battery_check.sh
   ```

3. The script will run continuously in the background, checking every 5 seconds

## How to stop

Press `Ctrl + C` to stop the monitoring.

## Files

- `battery_check.sh` - Main monitoring script
- `assets/sounds/Orion.ogg` - Alert sound file

## Notes

- The script checks `/sys/class/power_supply/BAT1/status` for battery information
- Only plays sound when status changes to "Discharging"
- Designed for laptops running Linux systems
- Useful when you want to monitor whether there was a power outage in your home during the night or during a sleeping period, for example.
-  Perfect for developers who often forget to plug in their laptops! 💻⚡

## Installation
```
bash
git clone <repository-url>
cd battery-check
chmod +x battery_check.sh
./battery_check.sh
```





