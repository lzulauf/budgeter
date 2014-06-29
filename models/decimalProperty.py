from google.appengine.ext import ndb

from helpers.decimal import Decimal

class DecimalProperty(ndb.IntegerProperty):
  """ See http://stackoverflow.com/questions/10035133/ndb-decimal-property """

  def _validate(self, value):
    if not isinstance(value, (Decimal, float, str, unicode, int, long)):
      raise TypeError("value can't be converted to a Decimal.")

  def _to_base_type(self, value):
    return int(round(Decimal(value) * 100))

  def _from_base_type(self, value):
    return Decimal(value) / 100
