from flask import Flask
import os
from datetime import datetime

app = Flask(__name__)

@app.route('/')
def hello():
    return f'''
    <h1>Лабораторная работа по контейнеризации</h1>
    <p>Время: {datetime.now()}</p>
    <p>Пользователь: {os.getenv('USER', 'unknown')}</p>
    <p>DB подключение: {len(os.getenv('DB_PASSWORD', '')) > 0}</p>
    '''

@app.route('/health')
def health():
    return 'OK'

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
