from bottle import route, run, template, request, redirect, static_file
import hashlib
SECRET = "hello"

INDEX = '<html><body><p>Download a sample <a href=/files/{{mac}}/?f={{file}}>here!</a>'
FILES = '<html><body><ul><li>sample.gif</li><li>dont.gif</li><li>flag</li>'

def mac(msg):
    print(SECRET+msg)
    return hashlib.sha1(SECRET + msg).hexdigest()

@route('/')
def index():
    f = 'sample.gif'
    return template(INDEX, mac=mac('f=' + f), file=f)

@route('/files/')
def dir():
    return FILES

@route('/files/<umac>/')
def download(umac):
    delim = msg = ''
    for k,v in request.query.allitems():
        msg += delim + k + '=' + v
        delim = '&'
    print(len(msg))
    if mac(msg) == umac:
        return static_file(request.query.f, root='./files')
    else:
        return redirect('/files/' + mac('f=dont.gif') + '/?f=dont.gif')



run(host='0.0.0.0', port=8888)
