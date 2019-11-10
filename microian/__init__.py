from flask import (Flask, render_template)
app = Flask(__name__)

@app.route('/')
def welcome():
    return render_template("blog/index.html")

@app.route('/example')
def example():
    return render_template("blog_example.html")

if __name__ == '__main__':
    app.run(host='0.0.0.0')
