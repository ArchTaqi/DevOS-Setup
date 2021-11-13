###############################################################################
# Python 3                                                                    #
###############################################################################

echo "------------------------------"
echo "Setting up python 3 environment."

# Install Python
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
