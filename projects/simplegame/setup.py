try:
	from setuptools import setup
except ImportError:
	from distutils.core import setup

config = {
	'description': 'Learning Python the Hard Way, Exercise 47 Project',
	'author': 'Jay R. Newlin',
	'url': 'Jays-MacBook-Pro:~/projects/ex47_project/',
	'download_url': '',
	'author_email': 'jay@dmgctrl.com',
	'version': '0.1',
	'install_requires': ['nose'],
	'packages': ['EX47'],
	'scripts': [],
	'name': 'ex47_project'
}

setup(**config)
