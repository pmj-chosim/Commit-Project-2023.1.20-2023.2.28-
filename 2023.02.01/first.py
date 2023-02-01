from flask import Flask
import random

app=Flask(__name__)

topics=[
    {'id':1, 'title':'Park','body':'Park is last name of..'},
    {'id':2, 'title':'Min','body':'Do kinda meaningful things with Minjin..'},
    {'id':3, 'title':'Jin','body':'Jean is not a default value of Minjin ..'}
]

@app.route('/')
def index():
    liTags=''
    for topic in topics:
        liTags=liTags+f'<li><a href="/read/{topic["id"]}/">{topic["title"]}</a></li>'
    return f'''<!doctype html>
    <html>
        <body>
            <h1><a href="/">PMJ</a><h1>
            <ol>
                {liTags}
            </ol>
            <h2>Welcome</h2>
            Hello, world!
        </body>
    </html>
    '''

    
    


@app.route('/read/1/')
def read1():
    return topics[0]["body"]

@app.route('/read/2/')
def read2():
    return topics[1]["body"]

@app.route('/read/3/')
def read3():
    return topics[2]["body"]

@app.route('/Minjin/<id>/')
def read(id):
    print(id)
    return 'Minjin'+id+ ' connect with World!'

app.run(debug=True)