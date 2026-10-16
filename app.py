from flask import Flask
app = Flask(__name__)

@app.route('/')
def text():
	return '<h1>Введите текст</h1><input>'
