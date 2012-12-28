
TESTS = $(wildcard test/test.*.js)
PER_TICK=1000
SIZE=1024
DURATION=5000

bm:
	node benchmark/pub --size $(SIZE) --per-tick $(PER_TICK) --duration $(DURATION) &
	node benchmark/sub --size $(SIZE) --duration $(DURATION)

test:
	@./test/run $(TESTS)
	
.PHONY: test bm