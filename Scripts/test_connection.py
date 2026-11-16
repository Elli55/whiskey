from db import verbindung_oeffnen

verbindung = verbindung_oeffnen()
cursor = verbindung.cursor()
cursor.execute("SELECT current_database(), current_user, current_setting('server_encoding')")
print(cursor.fetchone())
verbindung.close()