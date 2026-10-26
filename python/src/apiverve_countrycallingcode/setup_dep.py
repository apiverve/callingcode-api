from setuptools import setup, find_packages

setup(
    name='apiverve_countrycallingcode',
    version='1.2.3',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Country Calling Code is a phone number country code API that looks up international dialing codes and official names from a two-letter ISO country code. It returns an array of calling prefixes and standard country identifiers.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/callingcode?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
