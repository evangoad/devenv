
from setuptools import setup
import os

 
setup(
       name='devenv',
       version='0.1',  
       scripts=['bin/devenv'],
       install_requires=['unipath','setuptools','ansible','gitpython']
     )
