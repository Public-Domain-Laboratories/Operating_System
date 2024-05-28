#___________________Signal_Handler____________________
import signal
import sys
import time
import webbrowser

def signal_handler(signal, frame):
    print("Web Server Shutting Down.")
    sys.exit(0)

signal.signal(signal.SIGINT, signal_handler)

#___________________Monitor_Changes____________________

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
        
script_path = __file__
monitor_thread = threading.Thread(target=monitor_script, args=(script_path,))
monitor_thread.daemon = True
monitor_thread.start()

#____________________HTTP_SERVER_______________________
from http.server import ThreadingHTTPServer, BaseHTTPRequestHandler

class RedirectHandler(BaseHTTPRequestHandler):
    def do_GET(self):
        if self.path == '/':
            self.send_response(200)
            self.send_header("Content-type", "text/html")
            self.end_headers()
            
            response = (
                f"<html><head><title>https://pythonbasics.org</title></head>"
                f"<body><p>Request: {self.path}</p>"
                f"<p>This is an example web server.</p></body></html>"
            ).encode("utf-8")
            self.wfile.write(response)

def start_server():
    address = ('127.0.0.1', 8000)
    print("Web Server Started on: " + address[0] + ":" + str(address[1]))
    ThreadingHTTPServer(address, RedirectHandler).serve_forever()

def listen_for_enter():
    while True:
        sys.stdin.read(1)  # Read a single character from stdin
        webbrowser.open('http://127.0.0.1:8000')

if __name__ == "__main__":
    server_thread = threading.Thread(target=start_server)
    server_thread.daemon = True
    server_thread.start()
    
    input_thread = threading.Thread(target=listen_for_enter)
    input_thread.daemon = True
    input_thread.start()
    
    # Keep the main thread running, otherwise signals are ignored.
    while True:
        time.sleep(1)
