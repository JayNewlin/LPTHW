import web

urls = (
	'/', 'index'
)

app = web.application(urls, globals())

render = web.template.render('templates/')

class index:
	def GET(self):
		construction = "The Gothons are coming!!"
		return render.foo(construction = construction)

if __name__ == "__main__":
	app.run()
