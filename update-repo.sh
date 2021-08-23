export repo=64only
cd x86_64
rm -rf ${repo}.*
repo-add ${repo}.db.tar.gz *
for x in db files; do 
rm -rf ${repo}.$x
cp -r ${repo}.$x.tar.gz ${repo}.$x
done
cd .. 
rm -rf update-time
echo $(date) "update" > update-time
git add . 
git commit -F update-time
git push 
