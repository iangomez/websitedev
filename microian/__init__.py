from flask import (Flask, render_template)
app = Flask(__name__)

@app.route('/')
def welcome():
    title = "microian"
    name = "ian"
    return render_template("welcome.html", title=title, name=name)

if __name__ == '__main__':
    app.run(host='0.0.0.0')