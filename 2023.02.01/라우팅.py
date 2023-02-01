from flask import Flask
import random

app=Flask(__name__)

@app.route('/')
def index():
    return 'Welcome'

@app.route('/Park/')
def create():
    return 'Parking---'

@app.route('/Minjin/<id>/')
def read(id):
    print(id)
    return 'Minjin'+id+ ' connect with World!'

app.run(debug=True)
