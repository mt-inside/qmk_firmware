default:
	@just --list

drop-alt-build:
	qmk compile -kb massdrop/alt -km mt-inside
drop-alt-flash: drop-alt-build
	mdloader --first --download .build/massdrop_alt_mt-inside.hex --restart

gmmk-pro-build:
	qmk compile -kb gmmk/pro/rev1/iso -km mt-inside
gmmk-pro-flash: gmmk-pro-build
	qmk flash -kb gmmk/pro/rev1/iso -km mt-inside
