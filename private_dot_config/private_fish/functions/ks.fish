# Defined in /tmp/fish.apiOGB/ks.fish @ line 2
function ks --argument namespace
  kubectl --namespace $namespace $argv[2..-1]
end
