stacks="$(ls *.yml)"

for stack in $stacks
do
    docker stack deploy -c $stack ${stack%.*} || continue
done