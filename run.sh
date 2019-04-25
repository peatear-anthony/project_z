source activate magenta

git config --global alias.up '!git remote update -p; git merge --ff-only @{u}'

git checkout master && git up

jupyter notebook --ip 0.0.0.0 --no-browser --allow-root


