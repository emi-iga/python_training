from flask import Flask, render_template, request, redirect, url_for
import mysql.connector

app = Flask(__name__)
con = mysql.connector.connect(host='127.0.0.1',
                              port='3306',
                              user='root',
                              password='root',
                              database='pythontraining')

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/bread')
def bread():
    cur = con.cursor()
    cur.execute("SHOW TABLES")
    tables = cur.fetchall()
    cur.close()
    return render_template('bread.html', tables=tables)

# CREATE TABLE
@app.route('/bread/create', methods=['GET', 'POST'])
def table_create():
    if request.method == 'POST':
        return 'POST'
    return render_template('create.html')

# BROWSE TABLE
@app.route('/bread/browse/<string:table>')
def table(table):
    cursor = con.cursor()
    cursor.execute("SHOW COLUMNS FROM {}".format(table))
    columns = cursor.fetchall()
    cursor.execute("SELECT * FROM {}".format(table))
    rows = cursor.fetchall()
    return render_template('browse.html', columns=columns, rows=rows, table=table)

# ADD DATA TO TABLE
@app.route('/bread/browse/<string:table>/insert', methods=["GET","POST"])
def insert_data(table):
    if request.method == "POST":
        first_name = request.form['first_name']
        last_name = request.form['last_name']
        email = request.form['email']
        birthdate = request.form['birthdate']
        cursor = con.cursor()
        cursor.execute("INSERT INTO authors (first_name, last_name, email, birthdate) VALUES ('{}','{}','{}','{}')".format(first_name, last_name, email, birthdate))
        con.commit()
        cursor.close()
        return redirect('/bread/browse/authors')
    return render_template('insert_data.html')

# EDIT DATA FROM TABLE
@app.route('/bread/browse/<string:id>/edit', methods=["GET","POST"])
def edit_data(id):
    cursor = con.cursor()
    cursor.execute("SELECT * FROM authors WHERE id={}".format(id))
    data = cursor.fetchone()
    cursor.close()
    if request.method == 'POST':
        id = request.form['id']
        first_name = request.form['first_name']
        last_name = request.form['last_name']
        email = request.form['email']
        birthdate = request.form['birthdate']

        cursor = con.cursor()
        cursor.execute("UPDATE authors SET first_name='{}', last_name='{}', email='{}', birthdate='{}' WHERE id={}".format(first_name, last_name, email, birthdate,id))
        con.commit()
        cursor.close()
        return redirect('/bread/browse/authors')

    return render_template('edit_data.html', data=data)

# DELETE DATA FROM TABLE
@app.route('/bread/browse/<string:id>/delete')
def delete_data(id):
    cursor = con.cursor()
    cursor.execute("DELETE FROM authors WHERE id={}".format(id))
    con.commit()
    cursor.close()
    return redirect('/bread/browse/authors')

if __name__ == "__main__":
    app.run(debug=True, host="0.0.0.0")