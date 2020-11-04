# Defined in /home/ezandwa/.config/fish/functions/evrtd-config.fish @ line 2
function evrtd-config --argument id
	docker run --rm --env USER=$USER -v /home/$USER/.ssh/id_rsa:/tmp/id_rsa_roosta selndocker.mo.sw.ericsson.se/proj-pc-dev/roosta:latest \
  show -i $id cluster-config > ~/.kube/config-current-evrtd
end
