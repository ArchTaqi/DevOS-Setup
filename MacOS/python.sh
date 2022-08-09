###############################################################################
# Python 3                                                                    #
###############################################################################

echo "------------------------------"
echo "Setting up python 3 environment."

# Install Python
brew install pipenv
brew install pyenv

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then   
  eval "$(pyenv init -)" 
fi
exec "$SHELL"

# let’s download Python 3.9.10
pyenv install 3.9.10

brew install --force python3
brew link python3

# Install Python data modules
pip install numpy
pip install scipy
pip install matplotlib
pip install pandas
pip install sympy
pip install nose
pip install unittest2
pip install seaborn
pip install scikit-learn
pip install "ipython[all]"
pip install bokeh
pip install Flask
pip install sqlalchemy
#pip install mysql-python  # Python 2 only, use mysqlclient instead
pip install mysqlclient

pip3 install astroid
pip3 install autopep8
pip3 install certifi
pip3 install chardet2
pip3 install click
pip3 install Flask
pip3 install Flask-Cors
pip3 install harperdb
pip3 install idna
pip3 install isort
pip3 install itsdangerous
pip3 install Jinja
pip3 install lazy-object-proxy
pip3 install MarkupSafe
pip3 install mccabe
pip3 install psycopg2
pip3 install psycopg2-binary
pip3 install pycodestyle
pip3 install pylint
pip3 install python-dotenv
pip3 install requests
pip3 install setuptools
pip3 install six
pip3 install toml
pip3 install urllib3
pip3 install Werkzeug
pip3 install wrapt
