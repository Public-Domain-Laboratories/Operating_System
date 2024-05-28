import os
import time
import subprocess
import sys

def monitor_script(script_path):
    last_modified = os.path.getmtime(script_path)
    while True:
        time.sleep(1)  
        current_modified = os.path.getmtime(script_path)
        if current_modified != last_modified:
            print("Script modified! Restarting...")
            os.execv(sys.executable, ['python'] + sys.argv)
            break
        last_modified = current_modified

if __name__ == "__main__":
    print("Modifying this script will reload the python script.")
    script_path = __file__  
    monitor_script(script_path)
