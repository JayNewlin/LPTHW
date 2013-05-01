try:
	from setuptools import setup
except ImportError:
	from distutils.core import setup

config = {
	'description': 'Learning Python the Hard Way, Exercises 48 and 49',
	'author': 'Jay R. Newlin',
	'url': 'Jays-MacBook-Pro:~/PythonTheHardWay/projects/lexicon_project/',
	'download_url': '',
	'author_email': 'jay@dmgctrl.com',
	'version': '1.01',
	'install_requires': ['nose'],
	'packages': ['ex48', 'ex49'],
	'scripts': [],
	'name': 'LPTHW_Ex48-49_Lexicon'
}

setup(**config)
