import os
import time
import subprocess
import sys
import threading

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

def main():
    print("Modifying this script will reload the python script.")
    script_path = __file__
    monitor_thread = threading.Thread(target=monitor_script, args=(script_path,))
    monitor_thread.daemon = True
    monitor_thread.start()
    
    print("woah")  # Print the message before the infinite loop
    # Your main script code goes here
    while True:
        print("Main script running...")
        time.sleep(5)  # Example of the main script running

  
if __name__ == "__main__":
    main()
    