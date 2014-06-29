from google.appengine.ext import ndb

from models.decimalProperty import DecimalProperty

class Transaction(ndb.Model):
  userid = ndb.StringProperty(required=True)
  date = ndb.DateProperty(required=True)
  payee = ndb.StringProperty(required=True)
  description = ndb.StringProperty(required=True)
  outflow = DecimalProperty(required=True)
  inflow = DecimalProperty(required=True)
