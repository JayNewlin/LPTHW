try:
	from setuptools import setup
except ImportError:
	from distutils.core import setup

config = {
	'description': 'Learning Python the Hard Way, Exercise 48 Extra Credits',
	'author': 'Jay R. Newlin',
	'url': 'Jays-MacBook-Pro:~/PythonTheHardWay/projects/lexicon_project/',
	'download_url': '',
	'author_email': 'jay@dmgctrl.com',
	'version': '0.5',
	'install_requires': ['nose'],
	'packages': ['ex48'],
	'scripts': [],
	'name': 'Ex48_Lexicon_Project_EC'
}

setup(**config)
