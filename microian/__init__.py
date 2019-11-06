from flask import (Flask, render_template)
app = Flask(__name__)

@app.route('/')
def welcome():
    return render_template('welcome.html')

@app.route('/hello')
def hello():
    return "Hello World!"


if __name__ == '__main__':
    app.run(host='0.0.0.0')