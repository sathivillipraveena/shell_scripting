#!/bin/bash
movies=("The nun" "conjuring" "anabelle")
echo "first movie: ${movies[0]}"
echo "second movie:${movies[1]}"
echo "all the movies:${movies[@]}"
echo "movie[4]:${movies[4]}"
for i in movies
do 
    echo "movies in the array are : $i"
done
