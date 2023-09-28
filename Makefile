.PHONY: test

run:
	julia --project=. run.jl

test:
	julia --project=. test/runtests.jl
