from flask import Flask, render_template, request
import mysql.connector
from mysql.connector import Error

app = Flask(__name__)
cnx = mysql.connector.connect(host='127.0.0.1',
                               port='3306',
                               database='pythontraining',
                               user='root',
                               password='root')

def connect():
    try:
        cnx = mysql.connector.connect(host='127.0.0.1',
                                      database='pythontraining',
                                      user='root',
                                      password='root')
        if cnx.is_connected():
            print('Connected to MySQL database')
    except Error as e:
        print(e)
    else:
        cnx.close()

@app.route('/')
def main():
    cursor = cnx.cursor()
    query = ("SELECT * from authors")
    cursor.execute(query)
    test = cursor.fetchall()
    cursor.close()
    return render_template('index.html', test=test)

@app.route('/bread')
def bread():
    cursor = cnx.cursor()
    query = ("SHOW TABLES")
    cursor.execute(query)
    tables = cursor.fetchall()
    cursor.close()
    return render_template('bread.html', tables=tables)

@app.route('/bread/create')
def bread_create():
    return render_template('create.html')

@app.route('/bread/browse/<string:table>')
def table(table):
    cursor = cnx.cursor()
    result = cursor.execute("SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_SCHEMA = 'trdpython' AND TABLE_NAME = '{}'".format(table))
    columns = cursor.fetchall()
    result = cursor.execute("SELECT * FROM {}".format(table))
    rows = cursor.fetchall()
    return render_template('browse.html', columns=columns, rows=rows, table=table)

# add
@app.route('/bread/edit/<string:table>', methods=["GET", "POST"])
def table_edit(table):
    cursor = cnx.cursor()
    result = cursor.execute("SELECT COLUMN_NAME, DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_SCHEMA = 'pythontraining' AND TABLE_NAME = '{}'".format(table))
    results = cursor.fetchall()
    cursor.close()
    if request.method == "POST":
        pass
    return render_template("table_edit.html", results=results)
# edit
# delete

if __name__ == '__main__':
    app.run(host='0.0.0.0', debug=True)