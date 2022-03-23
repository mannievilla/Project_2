from flask import Flask, render_template
from config import postgres_pwd
import sqlalchemy
from sqlalchemy import create_engine, func
from flask import Flask, jsonify

#################################################
# Database Setup
#################################################
# engine = create_engine("sqlite:///titanic.sqlite")
rds_connection_string = f"postgres:{postgres_pwd}@localhost:5432/for_now"
engine = create_engine(f'postgresql://{rds_connection_string}')

#################################################

#################################################
# Flask Setup
#################################################
app = Flask(__name__)

#################################################
# Routes
#################################################

if __name__ == "__main__":
    app.run(debug=True)