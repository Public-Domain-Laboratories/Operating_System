#___________________Signal_Handler____________________
import signal
import sys
import time
import webbrowser
import os
import subprocess
import threading
from http.server import ThreadingHTTPServer, BaseHTTPRequestHandler
import logging

# Configure logging
logging.basicConfig(level=logging.INFO, format='%(asctime)s - %(message)s')

server = None
stop_event = threading.Event()

def signal_handler(signal, frame):
    logging.info("Web Server Shutting Down.")
    if server:
        server.shutdown()
    stop_event.set()
    sys.exit(0)

signal.signal(signal.SIGINT, signal_handler)

#___________________Monitor_Changes____________________

def monitor_script(script_path):
    last_modified = os.path.getmtime(script_path)
    while not stop_event.is_set():
        time.sleep(1)
        current_modified = os.path.getmtime(script_path)
        if current_modified != last_modified:
            logging.info("Script modified! Restarting...")
            os.execv(sys.executable, [sys.executable] + sys.argv)
            break
        last_modified = current_modified

#____________________HTTP_SERVER_______________________
from string import Template
class RedirectHandler(BaseHTTPRequestHandler):
    def do_GET(self):
        if self.path == '/':
            self.send_response(200)
            self.send_header("Content-type", "text/html")
            self.end_headers()
            
            response_template = Template("""<!DOCTYPE html>
            <html>
            <head>
                <title>https://pythonbasics.org</title>
            </head>
            <body>
                <p>Request: $path</p>
                <p>This is an example web server.</p>
                <script>
                    // Example JavaScript code
                    function test() {
                        console.log("JavaScript is working!");
                    }
                    test();

                    alert("Welcome to the example web server!");
                </script>
            </body>
            </html>""")
            response = response_template.substitute(path=self.path, two=2)

            # Encode the response to bytes
            encoded_response = response.encode('utf-8')

            # Write the encoded response to the output stream
            self.wfile.write(encoded_response)
            logging.info(f"Handled request for {self.path}")

def start_server():
    global server
    address = ('127.0.0.1', 8000)
    server = ThreadingHTTPServer(address, RedirectHandler)
    logging.info("Web Server Started on: " + address[0] + ":" + str(address[1]))
    server.serve_forever()

#_______________Command_Line_Interface_________________

def listen_for_enter():
    while True:
        command = input().strip().lower()  # Wait for Enter key press
        if command == "stop":
            logging.info("Stopping the server...")
            if server:
                server.shutdown()
                logging.info("Server stopped.")
            stop_event.set()
            with open('stop_flag.txt', 'w') as f:
                f.write('stop')
            os._exit(0)  # Force exit the program
        elif command == "":
            webbrowser.open('http://127.0.0.1:8000')
        elif command == "open":
            webbrowser.open('http://127.0.0.1:8000')

# Wrapper function to restart the script
def restart_script():
    while True:
        if os.path.exists('stop_flag.txt'):
            logging.info("Stop flag detected. Exiting restart loop.")
            #input()
            os.remove('stop_flag.txt')
            break
        
        process = subprocess.Popen([sys.executable, __file__], stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True, bufsize=1)
        # Real-time output handling
        def output_reader(pipe, pipe_name):
            with pipe:
                for line in iter(pipe.readline, ''):
                    print(f"[{pipe_name}] {line}", end='')

        stdout_thread = threading.Thread(target=output_reader, args=(process.stdout, 'STDOUT'))
        stderr_thread = threading.Thread(target=output_reader, args=(process.stderr, 'STDERR'))
        stdout_thread.start()
        stderr_thread.start()
        
        stdout_thread.join()
        stderr_thread.join()
        
        process.wait()
        if process.returncode != 0:
            logging.error("Script error. Press Enter to restart the script.")
            input()  # Wait for Enter key press to restart the script

if __name__ == "__main__":
    if 'WRAPPER_RUN' not in os.environ:
        os.environ['WRAPPER_RUN'] = '1'
        restart_script()
    else:
        script_path = __file__
        monitor_thread = threading.Thread(target=monitor_script, args=(script_path,))
        monitor_thread.daemon = True
        monitor_thread.start()

        server_thread = threading.Thread(target=start_server)
        server_thread.daemon = True
        server_thread.start()
        
        input_thread = threading.Thread(target=listen_for_enter)
        input_thread.daemon = True
        input_thread.start()
        
        # Keep the main thread running, otherwise signals are ignored.
        while not stop_event.is_set():
            time.sleep(1)