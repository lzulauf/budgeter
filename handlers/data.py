import webapp2

from google.appengine.api import users
from google.appengine.ext import ndb

from models.transaction import Transaction

class DataViewHandler(webapp2.RequestHandler):
  def get(self, user):
    if user:
      self.response.out.write("Passed in user not yet implemented")
    else:
      user = users.get_current_user()
    self.response.out.write("hello world")
    transactions = Transaction.query(Transaction.user == user).fetch(100)
    self.response.out.write("<html><body><ul>")
    for transaction in transactions:
      self.response.out.write('<li>%s</li>\n' % transaction.description)
    self.response.out.write("</ul></body></html>")

class DataAddHandler(webapp2.RequestHandler):
  def get(self, user):
    if user:
      self.response.out.write("Passed in user not yet implemented")
    else:
      user = users.get_current_user()

    # TODO Create a form for the user

  def post(self):
    # TODO - Accept post and create transaction
    pass


app = webapp2.WSGIApplication([
  ("/data/view(/.*)?", DataViewHandler),
  ("/data/add(/.*)?", DataAddHandler),
  ], debug=True)
