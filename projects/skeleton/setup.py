try:
	from setuptools import setup
except ImportError:
	from distutils.core import setup

config = {
	'descripttion': 'My Project',
	'author': 'Jay R. Newlin',
	'url': 'URL to get at it',
	'download_url': 'Where to download it.',
	'author_email': 'jay@dmgctrl.com',
	'version': '0.1',
	'install_requires': ['nose'],
	'packages': ['NAME'],
	'scripts': [],
	'name': 'projectname'
}

setup(**config)
