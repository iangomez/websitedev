@app.route('/')
def welcome():
    return render_template("blog/index.html")