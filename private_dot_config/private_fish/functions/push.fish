# Defined in /tmp/fish.Pa9N33/push.fish @ line 2
function push --wraps='git push origin HEAD:refs/for/master' --description 'alias push=git push origin HEAD:refs/for/master' --argument HASH BRANCH
  set  hash $HASH
  test -z $hash; and set hash "HEAD"
  set  branch $BRANCH
  test -z $branch; and set branch "master"

  git push origin $hash:refs/for/$branch
end
