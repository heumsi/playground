from flask import Flask

app = Flask(__name__)


@app.route("/")
def hello_world():
    """hello_world 를 출력합니다."""

    return "Hello, world!"


if __name__ == "__main__":
    app.run(debug=True, host="0.0.0.0")
