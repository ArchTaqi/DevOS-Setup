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
