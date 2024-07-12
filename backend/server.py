from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/music', methods=['GET'])
def get_foo():
    return jsonify([
        {
            'id': 1,
            'track': 'Cool kids'
        }
    ])

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=4000)
