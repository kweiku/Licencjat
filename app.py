from flask import Flask, render_template

import os
from db.model import db
from routes import products, root, ingredients
from utils import repack_tuple

app = Flask(__name__)
app.register_blueprint(root)
app.register_blueprint(products, url_prefix='/p')
app.register_blueprint(ingredients, url_prefix='/i')

app.jinja_env.globals.update(repack_tuple=repack_tuple)

db_addr = os.environ.get('DB_ADDR')
secret = os.environ.get('APP_SECRET')
if not db_addr or not secret:
    print("No database configuration provided: \n"
          "Please add DB_ADDR and APP_SECRET env variables")
    exit(20)

app.config['SQLALCHEMY_DATABASE_URI'] = db_addr
app.config["SQLALCHEMY_TRACK_MODIFICATIONS"] = False
app.secret_key = secret


@app.errorhandler(404)
def not_found_handler(error):
    print(error)
    return render_template('pages/error_page.html',
                           message='Nie znaleziono strony :/',
                           title='Nie znaleziono')


db.init_app(app)


if __name__ == '__main__':
    app.run()
