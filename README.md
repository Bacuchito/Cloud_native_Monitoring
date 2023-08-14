# Application Monitoring Dashboard
The Application Monitoring Dashboard is a simple Flask web application designed to provide real-time monitoring of CPU and memory usage on a system using the psutil library. It displays the current CPU and memory utilization metrics on a web page, along with a status message indicating whether the metrics exceed a predefined threshold.

## Functionality
The application performs the following tasks:

Imports the necessary libraries: psutil for system resource monitoring and Flask for web application development.
Initializes a Flask web application.
Defines a route / that handles requests to the root URL.
Inside the / route, it retrieves the current CPU usage percentage using psutil.cpu_percent() and memory usage percentage using psutil.virtual_memory().percent.
If either the CPU usage or memory usage exceeds 80%, the application sets a warning message indicating "High CPU or Memory Detected, scale up!!!".
Renders an HTML template called index.html, passing the CPU and memory metrics, along with the warning message.
Runs the Flask application in debug mode on 0.0.0.0, allowing access from external devices.

## Usage
To use the Application Monitoring Dashboard:

Make sure you have Python and Flask installed on your system.
Copy the provided code into a file named app.py.
Open a terminal window and navigate to the directory containing app.py.
Run the application by executing the command: python app.py.
Open a web browser and go to http://localhost:5000/ to access the monitoring dashboard.
The dashboard will display the current CPU and memory usage metrics, along with a warning message if thresholds are exceeded.

## Dependencies
Python
Flask
psutil

## Note
This application is intended for demonstration and educational purposes. It provides a basic example of monitoring system resources using Flask and psutil. For production use, consider adding more advanced features, security measures, and robust error handling.

Disclaimer: The monitoring thresholds in the application are set to 80% for demonstration purposes. In a real-world scenario, you might want to adjust these thresholds based on your system's specifications and requirements.

## Author
This application was created by Sergio Lattke
