# Defined in /tmp/fish.yD9m7K/tokei.fish @ line 2
function tokei --argument path
	docker run -v $path:/data:ro mbologna/docker-tokei
end
