from flask import Flask
from datetime import datetime

app = Flask(__name__)

@app.route('/')
def current_datetime():
    now = datetime.now()
    current_time = now.strftime("%Y-%m-%d %H:%M:%S")
    return f"Current Date and Time: {current_time}"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080)
