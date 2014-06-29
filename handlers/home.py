import webapp2

class BudgetHandler(webapp2.RequestHandler):
  def get(self):
    self.redirect("/build/web/budgeter.html", permanent=True)

app = webapp2.WSGIApplication([
  ("/", BudgetHandler),
  ], debug=True)
