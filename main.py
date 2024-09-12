import openai
from flask import Flask, jsonify, render_template, request

openai.api_key = "your-api-key-here"

app = Flask(__name__)


def ai_bot_response(prompt):
    response = openai.ChatCompletion.create(
        model="gpt-3.5-turbo",
        messages=[
            {"role": "system", "content": "You are a helpful assistant."},
            {"role": "user", "content": prompt},
        ],
        max_tokens=100,
        temperature=0.7,
    )
    return response["choices"][0]["message"]["content"].strip()


@app.route("/")
def home():
    return render_template("index.html")


@app.route("/get_response", methods=["POST"])
def get_response():
    user_input = request.form["user_input"]
    bot_response = ai_bot_response(user_input)
    return jsonify({"response": bot_response})


if __name__ == "__main__":
    app.run(debug=True, port=5899)
