from flask_sqlalchemy import SQLAlchemy
from sqlalchemy.ext.hybrid import hybrid_property

db = SQLAlchemy()


class Categories(db.Model):
    query: db.Query
    __tablename__ = 'categories'
    category_id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.Text)


class Ingredients(db.Model):
    query: db.Query
    __tablename__ = 'ingredients'
    ingredient_id = db.Column(db.Integer, primary_key=True)
    category_id = db.Column(db.Integer, db.ForeignKey('categories.category_id'))
    name = db.Column(db.Text)
    description = db.Column(db.Text)
    img_url = db.Column(db.Text)
    category = db.relationship('Categories', backref='Ingredients', lazy=True)
    product_ingredients = db.relationship('ProductIngredients', backref='Ingredients', lazy=True)

    @hybrid_property
    def search_item(self):
        return {'id': self.ingredient_id,
                'name': self.name,
                'description': self.description,
                'type': 'Ingredients'}


class Products(db.Model):
    query: db.Query
    __tablename__ = 'products'
    product_id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.Text)
    description = db.Column(db.Text)
    img_url = db.Column(db.Text)
    product_ingredients = db.relationship('ProductIngredients', backref='Products', lazy=True)

    @hybrid_property
    def search_item(self):
        return {'id': self.product_id,
                'name': self.name,
                'description': self.description,
                'type': 'Ingredients'}


class ProductIngredients(db.Model):
    query: db.Query
    __tablename__ = 'product_ingredients'
    id = db.Column(db.Integer, primary_key=True)
    product_id = db.Column(db.Integer, db.ForeignKey('products.product_id'))
    ingredient_id = db.Column(db.Integer, db.ForeignKey('ingredients.ingredient_id'))
    ingredient = db.relationship('Ingredients', backref='ProductIngredients', lazy=True)
    product = db.relationship('Products', backref='ProductIngredients', lazy=True)
