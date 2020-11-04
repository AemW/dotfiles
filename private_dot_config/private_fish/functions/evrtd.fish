function evrtd --description 'run evrtd via proxy'
    docker pull selndocker.mo.sw.ericsson.se/proj-pc-dev/roosta:latest > /dev/null
    docker run --rm --env USER=$USER -v /home/$USER/.ssh/id_rsa:/tmp/id_rsa_roosta selndocker.mo.sw.ericsson.se/proj-pc-dev/roosta:latest $argv;
end
