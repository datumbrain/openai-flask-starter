# OpenAI Flask Starter

This project demonstrates how to create a simple AI chatbot using Python, the latest OpenAI API (`v1.44.1`), and Flask. The chatbot is powered by OpenAI's Large Language Model (LLM), allowing it to generate human-like responses. This project uses `Pipenv` for environment and dependency management.

## Features

- **Chatbot**: Powered by GPT-4 (or GPT-3.5) for human-like conversation.
- **Web Interface**: Built using Flask to interact with the bot via a browser.
- **OpenAI Integration**: Leverages OpenAI's latest `1.44.1` API for chat completions.
- **Easy Setup**: Uses `Pipenv` for environment and dependency management.

## Prerequisites

- Python 3.7+
- An OpenAI API key. You can get it [here](https://beta.openai.com/signup/).
- Pipenv (for managing Python environments and dependencies)

## Installation

1. **Clone the Repository**:

   ```bash
   git clone https://github.com/datumbrain/openai-flask-starter.git
   cd openai-flask-starter
   ```

2. **Install Pipenv** (if you don't have it installed):

   ```bash
   pip install pipenv
   ```

3. **Install Project Dependencies**:

   Run the following command to create a virtual environment and install dependencies using Pipenv:

   ```bash
   pipenv install
   ```

4. **Activate the Virtual Environment**:

   Activate the Pipenv virtual environment by running:

   ```bash
   pipenv shell
   ```

5. **Set Up Your OpenAI API Key**:

   Replace `'your-api-key-here'` in `app.py` with your actual OpenAI API key:

   ```python
   openai.api_key = 'your-api-key-here'
   ```

6. **Run the Flask Application**:

   Start the Flask app by running the following command:

   ```bash
   python app.py
   ```

   The app will start on `http://127.0.0.1:5899/`.

## Project Structure

```
/openai-flask-starter
│
├── templates/
│   └── index.html        # Frontend HTML for interacting with the chatbot
├── Pipfile               # Pipenv configuration file for project dependencies
├── Pipfile.lock          # Pipenv lock file for reproducible environments
├── app.py                # Flask server and chatbot logic
└── README.md             # Project documentation
```

## Usage

Once the app is running, open your browser and go to `http://127.0.0.1:5899/`. Type a message in the input box, and the chatbot will respond using the GPT-4 model.

## Key Files

- `app.py`: Contains the Flask application logic and the chatbot logic using OpenAI's API.
- `index.html`: The HTML frontend for the chatbot, located in the `templates/` directory.
- `Pipfile` and `Pipfile.lock`: Manage dependencies and virtual environments via Pipenv.

## License

This project is licensed under the MIT License.
