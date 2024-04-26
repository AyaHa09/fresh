from flask import Flask, render_template, request, redirect, url_for
import sqlite3

app = Flask(__name__)

@app.route('/')
def login_page():
    return render_template('login.html')

@app.route('/login', methods=['POST'])
def login():
    email = request.form['email']
    password = request.form['password']

    # Establish connection to the database within the route
    with sqlite3.connect('safelinkdb.db') as conn:
        c = conn.cursor()

        # Check if the provided email and password match any record in the policeOff table
        c.execute("SELECT * FROM policeOff WHERE email = ? AND passwordOfficer = ?", (email, password))
        user = c.fetchone()

        if user:
            # If a match is found, redirect to the dashboard
            return redirect(url_for('dashboard')) 
        else:
            # If no match is found, display an error message
            return "Invalid email or password"

@app.route('/dashboard')
def dashboard():
    # Establish connection to the database within the route
    with sqlite3.connect('safelinkdb.db') as conn:
        c = conn.cursor()

        # Fetch prisoner information from the database
        c.execute("SELECT * FROM prisoners WHERE name = ?", ("John",))

        prisoners = c.fetchall()

    return render_template('dashboard.html', prisoners=prisoners)

if __name__ == '__main__':
    # Run the application without debug mode
    app.run()
