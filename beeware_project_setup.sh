# https://docs.beeware.org/
read project_name

mkdir $project_name
cd $project_name
python3 -m venv "$project_name-venv"
source "$project_name-venv/bin/activate"
python -m pip install briefcase
briefcase new