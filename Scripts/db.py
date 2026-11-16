import os
import psycopg2
from dotenv import load_dotenv

load_dotenv()


def verbindung_oeffnen():
    return psycopg2.connect(
        host=os.environ["DB_HOST"],
        port=os.environ["DB_PORT"],
        dbname=os.environ["DB_NAME"],
        user=os.environ["DB_USER"],
        password=os.environ["DB_PASSWORT"],
    )