set -e
for stack in *.yml
do
    docker stack deploy --with-registry-auth -c $stack ${stack%.*} || continue
done
