#/bin/sh

for tag in 12.16.2 12.16 12 slim-12.16.2 slim-12.16 slim-12; do
  git tag -f $tag
  git push -f origin $tag
  docker push mhart/alpine-node:$tag
done

git push
