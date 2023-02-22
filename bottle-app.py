#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# Date:February 14,2021
# Framework:
#      Bottle for backend.
#      Bootstrap 5 for frontend.
# Author:Francis Cometa

# Database access.
import sqlite3

# Methods needed to work on building application.
from bottle import (route, run, debug, template,
                    request, static_file, get)

@route('/home')
@route('/')
def index():
    return template('template/home.tpl')

@route('/blog')
def blog():
    blog =  template('template/blog.tpl')
    return blog

@route('/report')
def report():
    headers = ['Date', 'Day', 'Ministry', 'Preacher', 'Asst',
               'Message', 'Att', 'Offering', 'Tithes', 'Remarks']
    conn = sqlite3.connect('ministryreport.db')
    c = conn.cursor()

# This code is convenient but need to tweak the table.
# By adding an id header.
# c.execute("SELECT * FROM ministryreport")
    c.execute("SELECT date, day, ministry, preacher, asst, message, att,\
               tithes, offering, remarks FROM ministryreport")
    result = c.fetchall()
    output = template('template/report.tpl', rows=result, header=headers)
    return output


@route('/edit/<no:int>', method="GET")
def edit(no):
    if request.GET.submit:
        date = request.GET.date.strip()
        day = request.GET.day.strip()
        ministry = request.GET.ministry.strip()
        preacher = request.GET.preacher.strip()
        assts = request.GET.asst.strip()
        message = request.GET.message.strip()
        atts = request.GET.att.strip()
        tithes = request.GET.tithes.strip()
        off = request.GET.offering.strip()
        rem = request.GET.remark.strip()

        conn = sqlite3.connect('ministryreport.db')
        c = conn.cursor()
        c.execute(
        "UPDATE ministryreport \
         SET date = ?, day = ?, ministry = ?, preacher = ?, asst = ?, \
             message = ?, att = ?, tithes = ?, offering = ?, remarks = ? \
         WHERE id \
         LIKE ?",(date, day, ministry, preacher, assts,
                  message, atts, tithes, off, rem, no)
        )
        conn.commit()
        conn.close()
        return template('template/updated', no=no)
    else:
        conn = sqlite3.connect('ministryreport.db')
        c = conn.cursor()
        c.execute('SELECT * FROM ministryreport WHERE id LIKE ?', (str(no),))
        cur_data = c.fetchone()

        return template('template/edit_form', old=cur_data, no=no)


@route('/fillupform', method="GET")
def fillupform():
    if request.GET.submit:
        date = request.GET.date.strip()
        day = request.GET.day.strip()
        ministry = request.GET.ministry.strip()
        preacher = request.GET.preacher.strip()
        assts = request.GET.asst.strip()
        message = request.GET.message.strip()
        atts = request.GET.att.strip()
        tithes = request.GET.tithes.strip()
        off = request.GET.offering.strip()
        rem = request.GET.remark.strip()
        conn = sqlite3.connect('ministryreport.db')
        c = conn.cursor()
        c.execute("INSERT INTO ministryreport \
        (date, day, ministry, preacher, asst, message, att, tithes, offering, remarks) \
        VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)",
        (date, day, ministry, preacher, assts, message, atts, tithes, off, rem))
        newid = c.lastrowid
        conn.commit()
        c.close()
        return template('template/newtemp.tpl', id=newid)
    else:
        return template('template/fillup-form.tpl')


@route('/delete<no:re:[0-9]+>')
def delete_item(no):
    conn = sqlite3.connect('ministryreport.db')
    c = conn.cursor()
    c.execute("DELETE FROM ministryreport WHERE id=?;", (str(no),))

    # Problem: integer more than 9 unable to delete.
    # I use "Delete FROM ministryreport WHERE id=?,str(no)"
    # This doesnt work.
    # Solved: it should be  LIKE ?,(str(no),))"
    # or "DELETE FROM ministryreport id=?",(str(no),))"
    # Problem: It still cant delete an item.
    # Solved: Forgot to commit. see python library.
    # Database persistent sqlite3-commit.

    conn.commit()
    result = c.fetchall()
    return template('template/delete.tpl', rows=result)

# Static files to be served.
# Got a problem serving static files.
# Searched google for answer and found one @ Stackoverflow.
# Copied and pasted it and it work.But I tried to really understand how it work
# and not just copy and paste it.

@get('/static/fonts/<filepath:re:.*\.(eot|otf|svg|ttf|woff)>')
def fonts(filepath):
    return static_file(filepath, root='static/fonts')


@get('/static/imgs/<filepath:re:.*\.(png|jpg|jpeg|svg)>')
def img(filepath):
    return static_file(filepath, root='static/imgs')


@get('/static/css/bootswatch/<filepath:re:.*\.css>')
def css(filepath):
    return static_file(filepath, root='static/css/bootswatch')


@get('/static/css/<filepath:re:.*\.css>')
def mycss(filepath):
    return static_file(filepath, root='static/css')


@get('/static/js/<filepath:re:.*\.js>')
def js(filepath):
    return static_file(filepath, root='static/js')

# Dont forget to turn debug to 'false' in production.
# debug(False) and reloader to false.

debug(True)
run(host='localhost', port='8000', reloader=True)
