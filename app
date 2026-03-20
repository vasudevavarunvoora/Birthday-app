from flask import Flask, render_template_string, redirect, url_for, render_template

app = Flask(__name__)

@app.route('/')
def home():
    return render_template("home.html")

@app.route('/go')
def go():
    return redirect(url_for('new'))

@app.route('/new')
def new():
    return render_template("new.html")

if __name__ == '__main__':
    app.run(host="0.0.0", port=10000)
