for stack in *.yml
do
    docker stack deploy -c $stack ${stack%.*} || continue
done