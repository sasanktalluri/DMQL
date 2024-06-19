# Backend (Flask)

from flask import Flask, render_template, request
import psycopg2

app = Flask(__name__)

# Function to establish database connection
def connect_to_db():
    conn = psycopg2.connect(
    dbname="DMQL_Amigo",
    user="postgres",
    password="admin",
    host="localhost",
    port="5432")
    return conn

# Route to display query form
@app.route('/')
def index():
    return render_template('index.html')

# Route to handle query submission
@app.route('/query', methods=['POST'])
def query():
    query_text = request.form['query']
    print(query_text)
    conn = connect_to_db()
    cur = conn.cursor()
    cur.execute(query_text)
    col_names = [desc[0] for desc in cur.description]
    rows = cur.fetchall()
    print(rows)
    cur.close()
    conn.close()
    return render_template('result.html', query=query_text, col_names=col_names,  rows=rows)

if __name__ == '__main__':
    app.run(debug=True)
