from flask import Flask, request, jsonify

app = Flask(__name__)

@app.route('/api', methods = ['GET'])
def returnascii():
    result = {}  # this is a dictionary that will return the result
    inputchr = str(request.args['query'])
    answer = str(ord(inputchr))  # function ord() returns the ascii character 
    result['output'] = answer
    return result

if __name__ == "__main__":
    app.run()