#!/bin/bash

#####################
# Project Generator #
#####################

# How to use
#
#     $ wget 
#     $ ./create_project.sh
#
# folder structure
#
# ./project
#    |---- venvs/
#    |---- project/
#             |---- README.rst
#             |---- AUTHORS.rst
#             |---- LICENSE.rst
#             |---- RELEASES.rst
#             |---- docs/
#             |---- requirements/

#-----------------------------------------------------------#
# Project Name
#-----------------------------------------------------------#

# enter a project name
echo "enter a project name and press [ENTER]"
read project_name

#-----------------------------------------------------------#
# Project Folders
#-----------------------------------------------------------#

# path: $project_name
# to create the project folders

mkdir $project_name
cd $project_name
mkdir $project_name venvs


#-----------------------------------------------------------#
# Project Files
#-----------------------------------------------------------#

# path: $project_name/project_name
# to get README.rst, AUTHORS.rst, RELEASES.rst, LICENSE.rst
cd $project_name
wget https://raw.githubusercontent.com/KellyChan/project-template/master/README.rst
wget https://raw.githubusercontent.com/KellyChan/project-template/master/AUTHORS.rst
wget https://raw.githubusercontent.com/KellyChan/project-template/master/RELEASES.rst
curl -L https://raw.githubusercontent.com/KellyChan/project-template/master/LICENSES/MIT.rst > LICENSE.rst

mkdir requirements
mkdir docs
cd ..


