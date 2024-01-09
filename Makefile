############################################################################
#
#  Nix commands
#
############################################################################

dev:
	nixos-rebuild dry-build --flake .#luna --use-remote-sudo

run:
	nixos-rebuild dry-activate --flake .#luna --use-remote-sudo

deploy:
	nixos-rebuild switch --flake .#luna --use-remote-sudo

debug:
	nixos-rebuild switch --flake .#luna --use-remote-sudo --show-trace --verbose

test:
	nixos-rebuild test --flake .#luna --use-remote-sudo

update:
	nix flake update

history:
	nix profile history --profile /nix/var/nix/profiles/system

gc:
	# remove all generations older than 7 days
	sudo nix profile wipe-history --profile /nix/var/nix/profiles/system  --older-than 7d

	# garbage collect all unused nix store entries
	sudo nix store gc --debug

opt:
	# Optimise storage
	# https://nixos.org/manual/nix/stable/command-ref/conf-file.html#conf-auto-optimise-store
	nix-store --optimise

.PHONY: clean
clean:
	rm -rf result