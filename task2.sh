#########################################
#Develop by: Oleg Ischouk
#Purpose:
#Date: 28/02/2025
#Version: 1.0.0
set -o errexit
#set -o pipefail
########################################


if ! command -v "ngnix" 
then echo "ngnix is not installed... intaling"